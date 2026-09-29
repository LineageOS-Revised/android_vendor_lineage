LOCAL_PATH := $(call my-dir)

UDFPS_ANIMATIONS := \
    None:prebuilt/SystemUIFingerprintRes_13_0_NONE.apk \
    Cosmos:prebuilt/SystemUIFingerprintRes_16_0_COSMOS.apk \
    Fireworks:prebuilt/SystemUIFingerprintRes_16_0_FIREWORKS.apk \
    Fy:prebuilt/SystemUIFingerprintRes_16_0_FY.apk \
    Halo:prebuilt/SystemUIFingerprintRes_16_0_Halo.apk \
    Hy:prebuilt/SystemUIFingerprintRes_16_0_HY.apk \
    Jd:prebuilt/SystemUIFingerprintRes_16_0_JD.apk \
    Ly:prebuilt/SystemUIFingerprintRes_16_0_LY.apk \
    Qy:prebuilt/SystemUIFingerprintRes_16_0_QY.apk \
    Ripple:prebuilt/SystemUIFingerprintRes_16_0_RIPPLE.apk \
    Stripe:prebuilt/SystemUIFingerprintRes_16_0_STRIPE.apk \
    Sw:prebuilt/SystemUIFingerprintRes_16_0_SW.apk \
    Xw:prebuilt/SystemUIFingerprintRes_16_0_XW.apk \
    Zf:prebuilt/SystemUIFingerprintRes_16_0_ZF.apk

define udfps-animation-module
include $(CLEAR_VARS)
LOCAL_MODULE := UdfpsAnim_$(word 1,$(subst :, ,$(1)))
LOCAL_MODULE_OWNER := lineage
LOCAL_SRC_FILES := $(word 2,$(subst :, ,$(1)))
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/overlay
include $(BUILD_PREBUILT)
endef

$(foreach a,$(UDFPS_ANIMATIONS),$(eval $(call udfps-animation-module,$(a))))
