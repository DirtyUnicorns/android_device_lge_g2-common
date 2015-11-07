#
# System Properties for G2
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.dualmic.config=endfire \
    persist.audio.fluence.audiorec=true \
    persist.audio.fluence.voicecall=true \
    ro.qc.sdk.audio.fluencetype=fluence \
    use.voice.path.for.pcm.voip=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.chip.vendor=brcm \
    persist.service.bdroid.a2dp_con=0 \
    persist.service.bdroid.scms_t=0 \
    ro.bt.bdaddr_path=/data/misc/bdaddr

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=420

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Media/offload
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    audio.offload.multiple.enabled=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    av.offload.enable=true \
    av.streaming.offload.enable=true \
    tunnel.audio.encode=true

PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    mm.enable.qcom_parser=3310129

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.custom_ecc=1 \
    persist.radio.custom_ecc_mcc={234,235,424,426,427,430,431:999},{334:060,066},{422:9999},{730:133} \
    persist.radio.custom_ecc_mcc_ex={450:111,112,113,119,122,125,127},{724:190},{440,441:110,118,119,112,911} \
    persist.radio.custom_ecc_voice={515:117},{452:113,114,115} \
    persist.radio.custom_ecc_hard=911,*911,#911,112,999,000,08,118,120,122,110,119,995,111,113,125,127,133

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.call_ring.multiple=0

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    ro.telephony.ril_class=LgeLteRIL

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sdk.sensors.gestures=true \
    ro.qti.sensors.amd=true \
    ro.qti.sensors.game_rv=true \
    ro.qti.sensors.georv=true \
    ro.qti.sensors.pam=true \
    ro.qti.sensors.pedometer=true \
    ro.qti.sensors.rmd=true \
    ro.qti.sensors.smd=true \
    ro.qti.sensors.step_counter=true \
    ro.qti.sensors.step_detector=true \
    ro.qti.sensors.tilt_detector=true \
    ro.qti.sensors.cmc=false \
    ro.qti.sensors.facing=false \
    ro.qti.sensors.gtap=false \
    ro.qti.sensors.tap=false \
    ro.qti.sensors.tilt=false \
    ro.qti.sensors.vmd=false \
    ro.qti.sensors.wu=false

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

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=20 \
    wifi.interface=wlan0

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
    ro.qualcomm.perf.cores_online=2

# Provides overrides to configure the HWUI/Dalvik limits
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
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

