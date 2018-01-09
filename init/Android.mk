LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libinit_pme
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
   system/core/init \
   system/core/base/include external/selinux/libselinux/include
LOCAL_CFLAGS := -Wall -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_SRC_FILES := init_pme.cpp
LOCAL_STATIC_LIBRARIES := libbase

include $(BUILD_STATIC_LIBRARY)
