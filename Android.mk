ifneq ($(filter g2 d800 d801 d802 d803 vs980 ls980,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))


$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9320; \
	ln -sf /data/misc/audio/wcd9320_anc.bin \
	$(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_anc.bin; \
	ln -sf /data/misc/audio/wcd9320_mad_audio.bin \
	$(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mad_audio.bin; \
	ln -sf /data/misc/audio/mbhc.bin \
	$(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mbhc.bin)

$(shell ln -sf /system/etc/thermald-8974.conf \
	$(TARGET_OUT_ETC)/thermald.conf; \
	ln -sf /system/etc/thermal-engine-8974.conf \
	$(TARGET_OUT_ETC)/thermal-engine.conf)

endif
