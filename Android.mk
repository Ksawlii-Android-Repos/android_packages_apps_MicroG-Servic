LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := MicroG-Services
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES :=  microg-240913006.apk
LOCAL_MODULE_CLASS := APPS
#LOCAL_PRIVILEGED : true
include $(BUILD_PREBUILT)
