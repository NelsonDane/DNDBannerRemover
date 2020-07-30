TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DNDBannerRemover

DNDBannerRemover_FILES = Tweak.x
DNDBannerRemover_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += dndbannerremoverpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
