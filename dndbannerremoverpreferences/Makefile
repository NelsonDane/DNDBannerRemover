TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DNDBannerRemoverPreferences

DNDBannerRemoverPreferences_FILES = BRPRootListController.m
DNDBannerRemoverPreferences_FRAMEWORKS = UIKit
DNDBannerRemoverPreferences_PRIVATE_FRAMEWORKS = Preferences
DNDBannerRemoverPreferences_INSTALL_PATH = /Library/PreferenceBundles
DNDBannerRemoverPreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
