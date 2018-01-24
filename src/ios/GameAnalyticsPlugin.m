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
    //[GameAnalytics configureBuild:buildString];
}
- (void) configureSdkGameEngineVersion:(CDVInvokedUrlCommand*)command {
    NSString *gameEngineSdkVersionString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureSdkVersion:gameEngineSdkVersionString];
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
    NSString *eventIdString = [command.arguments objectAtIndex:0];
    //[GameAnalytics addDesignEventWithEventId:eventIdString value:nil];
}
- (void) addDesignEventWithValue:(CDVInvokedUrlCommand*)command {
    NSString *eventIdString = [command.arguments objectAtIndex:0];
    NSNumber *valueNumber = [command.arguments objectAtIndex:1];
    //[GameAnalytics addDesignEventWithEventId:eventIdString value:valueNumber];
}

- (void) addErrorEvent:(CDVInvokedUrlCommand*)command {
    NSString *messageString = [command.arguments objectAtIndex:0];
    NSInteger severityInt = [command.arguments objectAtIndex:1];
    //[GameAnalytics addErrorEventWithSeverity:(GAErrorSeverity)severityInt message:messageString];
}
- (void) setEnabledInfoLog:(CDVInvokedUrlCommand*)command {
    [GameAnalytics setEnabledInfoLog:TRUE];
}
- (void) setEnabledVerboseLog:(CDVInvokedUrlCommand*)command {
    [GameAnalytics setEnabledVerboseLog:TRUE];
}
- (void) setEnabledManualSessionHandling:(CDVInvokedUrlCommand*)command {
    [GameAnalytics setEnabledManualSessionHandling:TRUE];
}

- (void) configureAvailableCustomDimensions01:(CDVInvokedUrlCommand*)command {
}
- (void) configureAvailableCustomDimensions02:(CDVInvokedUrlCommand*)command {
}
- (void) configureAvailableCustomDimensions03:(CDVInvokedUrlCommand*)command {
}
- (void) setCustomDimension01:(CDVInvokedUrlCommand*)command {
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    //[GameAnalytics setCustomDimension01:customDimensionString];
}
- (void) setCustomDimension02:(CDVInvokedUrlCommand*)command {
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    //[GameAnalytics setCustomDimension02:customDimensionString];
}
- (void) setCustomDimension03:(CDVInvokedUrlCommand*)command {
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    //[GameAnalytics setCustomDimension03:customDimensionString];
}

- (void) setFacebookId:(CDVInvokedUrlCommand*)command {
    NSString *facebookIdString = [command.arguments objectAtIndex:0];
    //[GameAnalytics setFacebookId:facebookIdString];
}
- (void) setGender:(CDVInvokedUrlCommand*)command {
    NSInteger gender = [command.arguments objectAtIndex:0];
}
- (void) setBirthYear:(CDVInvokedUrlCommand*)command {
    NSInteger birthYearInteger = [command.arguments objectAtIndex:0];
    //[GameAnalytics setBirthYear:birthYearInteger];
}

- (void) startSession:(CDVInvokedUrlCommand*)command {
    [GameAnalytics startSession];
}
- (void) endSession:(CDVInvokedUrlCommand*)command {
    [GameAnalytics endSession];
}

@end