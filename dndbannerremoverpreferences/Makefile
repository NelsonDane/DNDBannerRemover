TARGET := iphone:clang:latest:7.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DNDBannerRemoverPreferences

DNDBannerRemoverPreferences_FILES = BRPRootListController.m
DNDBannerRemoverPreferences_FRAMEWORKS = UIKit
DNDBannerRemoverPreferences_PRIVATE_FRAMEWORKS = Preferences
DNDBannerRemoverPreferences_INSTALL_PATH = /Library/PreferenceBundles
DNDBannerRemoverPreferences_CFLAGS = -fobjc-arc
DNDBannerRemoverPreferences_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk
