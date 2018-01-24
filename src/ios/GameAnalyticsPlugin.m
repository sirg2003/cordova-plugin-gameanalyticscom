#import "GameAnalyticsPlugin.h"
#import "GameAnalytics.h"

@implementation GameAnalyticsPlugin

// interface implementation

- (void) initialize:(CDVInvokedUrlCommand*)command {

}

- (void) configureBuild:(CDVInvokedUrlCommand*)command {

}
- (void) configureSdkGameEngineVersion:(CDVInvokedUrlCommand*)command {

}
- (void) configureGameEngineVersion:(CDVInvokedUrlCommand*)command {

}
- (void) configureUserId:(CDVInvokedUrlCommand*)command {

}

- (void) addBusinessEvent:(CDVInvokedUrlCommand*)command {

}
- (void) addBusinessEventWithReceipt:(CDVInvokedUrlCommand*)command {

}
- (void) addResourceEvent:(CDVInvokedUrlCommand*)command {

}
- (void) addProgressionEvent:(CDVInvokedUrlCommand*)command {

}
- (void) addProgressionEventWithScore:(CDVInvokedUrlCommand*)command {

}
- (void) addDesignEvent:(CDVInvokedUrlCommand*)command {

}
- (void) addDesignEventWithValue:(CDVInvokedUrlCommand*)command {

}

- (void) addErrorEvent:(CDVInvokedUrlCommand*)command {

}
- (void) setEnabledInfoLog:(CDVInvokedUrlCommand*)command {

}
- (void) setEnabledVerboseLog:(CDVInvokedUrlCommand*)command {

}
- (void) setEnabledManualSessionHandling:(CDVInvokedUrlCommand*)command {

}

- (void) configureAvailableCustomDimensions01:(CDVInvokedUrlCommand*)command {

}
- (void) configureAvailableCustomDimensions02:(CDVInvokedUrlCommand*)command {

}
- (void) configureAvailableCustomDimensions03:(CDVInvokedUrlCommand*)command {

}
- (void) setCustomDimension01:(CDVInvokedUrlCommand*)command {

}
- (void) setCustomDimension02:(CDVInvokedUrlCommand*)command {

}
- (void) setCustomDimension03:(CDVInvokedUrlCommand*)command {

}

- (void) setFacebookId:(CDVInvokedUrlCommand*)command {

}
- (void) setGender:(CDVInvokedUrlCommand*)command {

}
- (void) setBirthYear:(CDVInvokedUrlCommand*)command {

}

- (void) startSession:(CDVInvokedUrlCommand*)command {
    [GameAnalytics startSession];
}
- (void) endSession:(CDVInvokedUrlCommand*)command {
    [GameAnalytics endSession];
}

@end