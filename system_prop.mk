#
# System Properties for G2
#

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    ro.opengles.version=196608

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true \
    mm.enable.qcom_parser=3310129 \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.audiorec=false \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false \
    persist.audio.dualmic.config=endfire \
    ro.qc.sdk.audio.ssr=false \
    audio.offload.buffer.size.kb=32 \
    av.offload.enable=true \
    av.streaming.offload.enable=true \
    use.voice.path.for.pcm.voip=true \
    audio.offload.multiple.enabled=false \
    audio.offload.gapless.enabled=true \
    tunnel.audio.encode=false \
    media.aac_51_output_enabled=true \
    audio.offload.pcm.24bit.enable=true

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=LgeLteRIL

# Up to 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

# system props for the data modules
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    ro.data.large_tcp_window_size=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/misc/bdaddr

# Wifi Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=160 \
    wlan.chip.vendor=brcm \
    wlan.chip.version=bcm4335 \
    wifi.lge.patch=true \
    wlan.lge.concurrency=MCC \
    wlan.lge.supportsimaka=yes \
    wifi.lge.offdelay=false \
    wifi.lge.offloading=true \
    wifi.lge.aggregation=true \
    wifi.lge.mhp=true \
    wlan.lge.softap5g=true \
    wlan.lge.dcf.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.recordable.rgba8888=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.sensors.qmd=true \
    ro.qc.sdk.sensors.gestures=true \
    ro.qualcomm.sensors.pedometer=true \
    ro.qualcomm.sensors.pam=true \
    ro.qualcomm.sensors.scrn_ortn=true

# Sensor debugging
# Valid settings (and presumably what they mean):
#===============================================
#    persist.debug.sensors.hal=e \
#    persist.debug.ar.hal=e
#===============================================
#   0      - off
#   1      - all the things
#   V or v - verbose
#   D or d - debug
#   E or e - errors
#   W or w - warnings
#   I or i - info
#
PRODUCT_PROPERTY_OVERRIDES += \
    debug.qualcomm.sns.hal=i \
    debug.qualcomm.sns.daemon=i \
    debug.qualcomm.sns.libsensor1=e

# MTP and USB-OTG
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.sys.isUsbOtgEnabled=true

# QC vendor extension
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Background app control
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=28 \
    ro.sys.fw.bg_cached_ratio=0.5 \
    ro.sys.fw.mOomAdj1=0 \
    ro.sys.fw.mOomAdj2=1 \
    ro.sys.fw.mOomAdj3=2 \
    ro.sys.fw.mOomAdj4=3 \
    ro.sys.fw.mOomAdj5=9 \
    ro.sys.fw.mOomAdj6=15 \
    ro.sys.fw.mOomMinFree1=73728 \
    ro.sys.fw.mOomMinFree2=92160 \
    ro.sys.fw.mOomMinFree3=110592 \
    ro.sys.fw.mOomMinFree4=129024 \
    ro.sys.fw.mOomMinFree5=196608 \
    ro.sys.fw.mOomMinFree6=245760

# MPDecision
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.perf.cores_online=1

# Provides overrides to configure the HWUI/Dalvik limits
# Source https://github.com/CyanogenMod/android_frameworks_native/tree/cm-12.1/build
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=80 \
    ro.hwui.layer_cache_size=52 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=2 \
    ro.hwui.drop_shadow_cache_size=8 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m
