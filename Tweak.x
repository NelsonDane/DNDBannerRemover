#import <Cephei/HBPreferences.h>

static BOOL isEnabled;
//static BOOL carplayUnlock;
//static CGFloat hapticStrength;

%hook SBCarDoNotDisturbController
-(BOOL)_isExitConfirmationRequired {
  if (isEnabled) {
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

%ctor {

  HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.gamersnail.dndbannerremoverpreferences"];
  [preferences registerBool:&isEnabled default:YES forKey:@"isEnabled"];
	[preferences registerBool:&isEnabled default:YES forKey:@"carplayUnlock"];
	//[preferences registerFloat:&hapticStrength default:2 forKey:@"hapticStrength"];
}
