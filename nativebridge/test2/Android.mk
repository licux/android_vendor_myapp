LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := nativebridge_test
LOCAL_PROGUARD_ENABLED := disabled

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src) \

LOCAL_JNI_SHARED_LIBRARIES := \
    libHelloJNI
    
include $(BUILD_PACKAGE)
########################################
# JNI .so
########################################
include $(CLEAR_VARS)
include $(LOCAL_PATH)/jni/Android.mk