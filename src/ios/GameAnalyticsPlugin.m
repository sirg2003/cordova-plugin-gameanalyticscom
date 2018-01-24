#import "GameAnalyticsPlugin.h"
#import "GameAnalytics.h"

@implementation GameAnalyticsPlugin

// interface implementation

- (void) initialize:(CDVInvokedUrlCommand*)command {
    NSString *gameKeyString = [command.arguments objectAtIndex:0];
    NSString *gameSecretString = [command.arguments objectAtIndex:1];
    [GameAnalytics initializeWithGameKey:gameKeyString gameSecret:gameSecretString];
}
- (void) configureBuild:(CDVInvokedUrlCommand*)command {
    NSString *buildString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureBuild:buildString];
}
- (void) configureSdkGameEngineVersion:(CDVInvokedUrlCommand*)command {

}
- (void) configureGameEngineVersion:(CDVInvokedUrlCommand*)command {
    NSString *gameEngineVersionString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureEngineVersion:gameEngineVersionString];
}
- (void) configureUserId:(CDVInvokedUrlCommand*)command {
    NSString *userIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureUserId:userIdString];
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