#include "BRPRootListController.h"
#import <CepheiPrefs/HBRootListController.h>
#import <Cephei/HBRespringController.h>

@implementation BRPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openGithub {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://github.com/NelsonDane/DNDBannerRemover"]
	options:@{}
	completionHandler:nil];
}

- (void)respring {
	  [HBRespringController respring];
}

- (void)openDonate {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://paypal.me/NelsonDane15"]
	options:@{}
	completionHandler:nil];
}

@end
