#
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

# Toolchain information
TARGET_GCC_VERSION_EXP := 4.9-UBERTC
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-5.1/bin/"

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
#TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

# Assertions
TARGET_BOARD_INFO_FILE ?= device/lge/g2-common/board-info.txt

TARGET_BOOTLOADER_BOARD_NAME := galbi

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Kernel information
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=g2 androidboot.bootdevice=msm_sdcc.1 user_debug=31 msm_rtb.filter=0x0 mdss_mdp.panel=1:dsi:0:qcom,mdss_dsi_g2_lgd_cmd
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x05000000 --tags_offset 0x04800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/lge/g2-common/releasetools/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/lge/msm8974
TARGET_KERNEL_ARCH := arm

# Audio
BOARD_USES_ALSA_AUDIO:= true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true


# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

# Display
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
#TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
HAVE_ADRENO_SOURCE := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# EGL
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Qualcomm HALs
BOARD_USES_QCOM_HARDWARE := true

# QCOM PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE
#COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=512

# Flags
#TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB = device/lge/g2-common/rootdir/etc/fstab.g2
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # 2.5G (actually 2.75, but leave room for model variation)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312 # 12.8G (its much larger, but this is enough for now)
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200 #700M
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/g2-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lge/g2-common/bluetooth/vnd_g2.txt

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# NFC
TARGET_USES_OS_NFC := true

# Offmode Charging
BOARD_CHARGER_ENABLE_SUSPEND := true
COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# SELinux policies
# QCOM sepolicy
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/lge/g2-common/sepolicy

BOARD_SEPOLICY_UNION += \
    bluetooth.te \
    clatd.te \
    file.te \
    file_contexts \
    genfs_contexts \
    init.te \
    init_shell.te \
    kernel.te \
    mediaserver.te \
    mm-qcamerad.te \
    mpdecision.te \
    netd.te \
    platform_app.te \
    property.te \
    property_contexts \
    qseecomd.te \
    radio.te \
    rmt_storage.te \
    sensors.te \
    servicemanager.te \
    shell.te \
    sysinit.te \
    system_app.te \
    system_server.te \
    thermal-engine.te \
    untrusted_app.te \
    vold.te \
    wpa.te

# RIL
BOARD_RIL_CLASS := ../../../device/lge/g2-common/ril/
TARGET_RELEASE_CPPFLAGS += -DNEEDS_LGE_RIL_SYMBOLS

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_g2
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/g2-common/releasetools

# Qualcomm time
BOARD_USES_QC_TIME_SERVICES := true

# Device headers
TARGET_SPECIFIC_HEADER_PATH := device/lge/g2-common/include

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_ONLY := false
    endif
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

###                                     ###
### Specific Options for TWRP Building  ###
###                                     ###

# Common Options
DEVICE_RESOLUTION := 1080x1920
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.175/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
TW_INCLUDE_L_CRYPTO := true
TARGET_RECOVERY_INITRC := device/lge/g2-common/twrp/init.rc

# Post recovery boot script
PRODUCT_COPY_FILES += device/lge/g2-common/twrp/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Add touch to wake as its own init
PRODUCT_COPY_FILES += device/lge/g2-common/twrp/init.recovery.touchtowake.rc:recovery/root/etc/init.recovery.touchtowake.rc

# Enable f2fs filesystem tools
TARGET_USERIMAGES_USE_F2FS := true

##  Functions to properly set config and files based on existence of an External SD Card
# Board has an External SD Card (i.e. f320 or lgl22)
ifneq ($(filter f320 lgl22,$(TARGET_DEVICE)),)
    BOARD_HAS_NO_REAL_SDCARD := false
    TW_EXTERNAL_STORAGE_PATH := "/external_sd"
    TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

    PRODUCT_COPY_FILES += device/lge/g2-common/twrp/twrp.g2.has_sd.fstab:recovery/root/etc/twrp.fstab
    PRODUCT_COPY_FILES += device/lge/g2-common/twrp/init.recovery.sd_card.rc:recovery/root/etc/init.recovery.sd_card.rc

# OR
# Board does not have an External SD Card
else
    BOARD_HAS_NO_REAL_SDCARD := true
    PRODUCT_COPY_FILES += device/lge/g2-common/twrp/twrp.g2.no_sd.fstab:recovery/root/etc/twrp.fstab
endif

