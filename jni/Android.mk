LOCAL_PATH := $(call my-dir)

PRIVATE_LOCAL_CFLAGS := -O2 -g -W -Wall		\
			-DSO_RXQ_OVFL=40	\
			-DPF_CAN=29		\
			-DAF_CAN=PF_CAN		\
			-std=c++0x -std=gnu++0x

include $(CLEAR_VARS)

LOCAL_SRC_FILES := cansocket.cpp
LOCAL_MODULE := cansocket
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/
LOCAL_CFLAGS := $(PRIVATE_LOCAL_CFLAGS)

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
