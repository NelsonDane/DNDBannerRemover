#import <Cephei/HBPreferences.h>

// Variables
static BOOL isEnabled;
static BOOL carplayUnlock;

// Disable CarPlay Unlock Confirmation when the setting is on and the tweak is enabled
%hook SBCarDoNotDisturbController
-(BOOL)_isExitConfirmationRequired {
  if (isEnabled && carplayUnlock) {
    %log;
    BOOL r = FALSE;
    HBLogDebug(@" = %d", r);
    return r;
  } else {
    %log;
    BOOL r = %orig;
    HBLogDebug(@" = %d", r);
    return r;
  }
}

%end

// Settings
%ctor {

  HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.gamersnail.dndbannerremoverpreferences"];
  [preferences registerBool:&isEnabled default:YES forKey:@"isEnabled"];
	[preferences registerBool:&carplayUnlock default:YES forKey:@"carplayUnlock"];
}
