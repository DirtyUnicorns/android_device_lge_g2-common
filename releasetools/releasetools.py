# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2013-2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Detect panel and swap as necessary 
# lcd_maker_id is determined by get_panel_maker_id on the hardware and is always accurate.
# This searches directly in the boot.img and has no other requirements.
# Do not shorten the search or you may change the actual kernel source.
#
# Unmount /system in CM install
# On CM install we need to manually unmount /system before flashing boot image.


"""Custom OTA commands for LG devices with locked bootloaders"""

import hashlib
import common
import re
import os

TARGET_DIR = os.getenv('OUT')

def FullOTA_Assertions(info):
  AddBootloaderAssertion(info, info.input_zip)
  AddTrustZoneAssertion(info, info.input_zip)
  return

def IncrementalOTA_Assertions(info):
  AddBootloaderAssertion(info, info.input_zip)
  AddTrustZoneAssertion(info, info.target_zip)
  return

def AddBootloaderAssertion(info, input_zip):
  android_info = input_zip.read("OTA/android-info.txt")
  m = re.search(r"require\s+version-bootloader\s*=\s*(\S+)", android_info)
  if m:
    bootloaders = m.group(1).split("|")
    if "*" not in bootloaders:
      AssertPartitionChecksum(info,
              "/dev/block/platform/msm_sdcc.1/by-name/aboot", 1048576, bootloaders)
    info.metadata["pre-bootloader"] = m.group(1)

def AddTrustZoneAssertion(info, input_zip):
  android_info = info.input_zip.read("OTA/android-info.txt")
  m = re.search(r'require\s+version-trustzone\s*=\s*(\S+)', android_info)
  if m:
    versions = m.group(1).split('|')
    if len(versions) and '*' not in versions:
      cmd = 'assert(g2.verify_trustzone(' + ','.join(['"%s"' % tz for tz in versions]) + ') == "1");'
      info.script.AppendExtra(cmd)
  return

def AssertPartitionChecksum(info, partition, size, checksums):
    info.script.AppendExtra('assert(' +
            ' || '.join(['sha1_check(read_file("EMMC:%s:%d:%s")) != ""' % (partition, size, c)
                for c in checksums]) +
            ' || abort("Invalid checksum for partition %s")' % (partition) +
            ');')

def FullOTA_InstallEnd(info):
  info.script.script = [cmd for cmd in info.script.script if not "boot.img" in cmd]
  info.script.script = [cmd for cmd in info.script.script if not "show_progress(0.100000, 0);" in cmd]
  info.script.AppendExtra('package_extract_file("boot.img", "/tmp/boot.img");')
  
  info.script.AppendExtra('ifelse(is_mounted("/system"), unmount("/system"));')
  
  info.script.Mount("/system")
  info.script.AppendExtra('assert(run_program("/system/bin/panel.sh") == 0);')
  info.script.AppendExtra('assert(run_program("/sbin/sh", "-c", "dd if=/tmp/boot.img of=/dev/block/platform/msm_sdcc.1/by-name/boot") == 0);')
  info.script.AppendExtra('delete("/system/bin/panel.sh");')
  info.script.Unmount("/system")
