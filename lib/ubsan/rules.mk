LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_SRCS += \
	$(LOCAL_DIR)/ubsan.cpp

ifeq ($(UBSAN), 1)
GLOBAL_COMPILEFLAGS += -fsanitize=undefined
endif

include make/module.mk
