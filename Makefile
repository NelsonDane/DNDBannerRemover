THEOS_DEVICE_IP = 192.168.0.43

TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DNDBannerRemover
DNDBannerRemover_FILES = Tweak.x
DNDBannerRemover_CFLAGS = -fobjc-arc
DNDBannerRemover_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += dndbannerremoverpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
