export THEOS_DEVICE_IP = 127.0.0.1
export THEOS_DEVICE_PORT = 22

TARGET := iphone:clang:14.5
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RobloxVNGKiller
RobloxVNGKiller_FILES = Tweak.xm
RobloxVNGKiller_CFLAGS = -fobjc-arc

# Bỏ qua bước ký để tránh lỗi nếu không có ldid
CODESIGN = true
TARGET_CODESIGN = echo

include $(THEOS_MAKE_PATH)/tweak.mk
