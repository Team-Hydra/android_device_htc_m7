LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := setinit
LOCAL_MODULE_TAGS       := optional eng

LOCAL_C_INCLUDES        := system/core \
                           system/core/include \
                           system/core/init \
                           bionic/libc/include

LOCAL_STATIC_LIBRARIES  := libcutils \
                           libc \
                           liblog

LOCAL_SRC_FILES         := setinit.c \
                           ../../../../../system/core/init/util.c \
                           ../../../../../system/core/init/property_service.c

LOCAL_MODULE_CLASS      := EXECUTABLES
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_EXECUTABLE)
