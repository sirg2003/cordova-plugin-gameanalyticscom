#import "GameAnalyticsPlugin.h"
#import "GameAnalytics.h"

@implementation GameAnalyticsPlugin

// interface implementation

- (void) initialize:(CDVInvokedUrlCommand*)command
{
    NSString *gameKey = [command.arguments objectAtIndex:0];
    NSString *gameSecret = [command.arguments objectAtIndex:1];
    [GameAnalytics initializeWithGameKey:gameKey gameSecret:gameSecret];
}
- (void) configureBuild:(CDVInvokedUrlCommand*)command
{
    NSString *build = [command.arguments objectAtIndex:0];
    [GameAnalytics configureBuild:build];
}
- (void) configureGameEngineVersion:(CDVInvokedUrlCommand*)command
{
    NSString *gameEngineVersion = [command.arguments objectAtIndex:0];
    [GameAnalytics configureEngineVersion:gameEngineVersion];
}
- (void) configureSdkGameEngineVersion:(CDVInvokedUrlCommand*)command
{
    NSString *sdkVersion = [command.arguments objectAtIndex:0];
    [GameAnalytics configureSdkVersion:sdkVersion];
}
- (void) configureUserId:(CDVInvokedUrlCommand*)command
{
    NSString *uId = [command.arguments objectAtIndex:0];
    [GameAnalytics configureUserId:uId];
}

- (void) addBusinessEvent:(CDVInvokedUrlCommand*)command
{
    NSString *currency = [command.arguments objectAtIndex:0];
    NSInteger amount = [command.arguments objectAtIndex:1];
    NSString *itemType = [command.arguments objectAtIndex:2];
    NSString *itemId = [command.arguments objectAtIndex:3];
    NSString *cartType = [command.arguments objectAtIndex:4];
    
    [GameAnalytics addBusinessEventWithCurrency:currency
                                         amount:amount
                                       itemType:itemType
                                         itemId:itemId
                                       cartType:cartType
                                        receipt:nil];
}
- (void) addBusinessEventWithReceipt:(CDVInvokedUrlCommand*)command
{
    NSString *currency = [command.arguments objectAtIndex:0];
    NSInteger amount = [command.arguments objectAtIndex:1];
    NSString *itemType = [command.arguments objectAtIndex:2];
    NSString *itemId = [command.arguments objectAtIndex:3];
    NSString *cartType = [command.arguments objectAtIndex:4];
    NSString *receipt = [command.arguments objectAtIndex:5];
    
    [GameAnalytics addBusinessEventWithCurrency:currency
                                         amount:amount
                                       itemType:itemType
                                         itemId:itemId
                                       cartType:cartType
                                        receipt:receipt];
}
- (void) addResourceEvent:(CDVInvokedUrlCommand*)command
{
    int flowType = [[command.arguments objectAtIndex:0] intValue];
    NSString *currency = [command.arguments objectAtIndex:1];
    double amount = [[command.arguments objectAtIndex:2] doubleValue];
    NSString *itemType = [command.arguments objectAtIndex:3];
    NSString *itemId = [command.arguments objectAtIndex:4];
    
    [GameAnalytics addResourceEventWithFlowType:(GAResourceFlowType)flowType
                                       currency:currency
                                         amount:@(amount)
                                       itemType:itemType
                                         itemId:itemId];
}
- (void) addProgressionEvent:(CDVInvokedUrlCommand*)command
{
    int progressionStatus = [[command.arguments objectAtIndex:0] intValue];
    NSString *progression01 = [command.arguments objectAtIndex:1];
    NSString *progression02 = [command.arguments objectAtIndex:2];
    NSString *progression03 = [command.arguments objectAtIndex:3];
    
    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatus
                                              progression01:progression01
                                              progression02:progression02
                                              progression03:progression03];
}
- (void) addProgressionEventWithScore:(CDVInvokedUrlCommand*)command
{
    int progressionStatus = [[command.arguments objectAtIndex:0] intValue];
    NSString *progression01 = [command.arguments objectAtIndex:1];
    NSString *progression02 = [command.arguments objectAtIndex:2];
    NSString *progression03 = [command.arguments objectAtIndex:3];
    int score = [[command.arguments objectAtIndex:4] intValue];
    
    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatus
                                              progression01:progression01
                                              progression02:progression02
                                              progression03:progression03
                                              score:score];
}
- (void) addDesignEvent:(CDVInvokedUrlCommand*)command
{
    NSString *eventId = [command.arguments objectAtIndex:0];
    [GameAnalytics addDesignEventWithEventId:eventId];
}
- (void) addDesignEventWithValue:(CDVInvokedUrlCommand*)command
{
    NSString *eventId = [command.arguments objectAtIndex:0];
    double value = [[command.arguments objectAtIndex:1] doubleValue];
    [GameAnalytics addDesignEventWithEventId:eventId value:@(value)];
}

- (void) addErrorEvent:(CDVInvokedUrlCommand*)command
{
    int severity = [[command.arguments objectAtIndex:0] intValue];
    NSString *message = [command.arguments objectAtIndex:1];
    [GameAnalytics addErrorEventWithSeverity:(GAErrorSeverity)severity message:message];
}
- (void) setEnabledInfoLog:(CDVInvokedUrlCommand*)command
{
    BOOL flag = [[command.arguments objectAtIndex:0] boolValue];
    [GameAnalytics setEnabledInfoLog:flag];
}
- (void) setEnabledVerboseLog:(CDVInvokedUrlCommand*)command
{
    BOOL flag = [[command.arguments objectAtIndex:0] boolValue];
    [GameAnalytics setEnabledVerboseLog:flag];
}
- (void) setEnabledManualSessionHandling:(CDVInvokedUrlCommand*)command
{
    BOOL flag = [[command.arguments objectAtIndex:0] boolValue];
    [GameAnalytics setEnabledManualSessionHandling:flag];
}

- (void) configureAvailableCustomDimensions01:(CDVInvokedUrlCommand*)command
{
    NSString *json = [command.arguments objectAtIndex:0];
    NSArray *dimensions = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions01:dimensions];
}
- (void) configureAvailableCustomDimensions02:(CDVInvokedUrlCommand*)command
{
    NSString *json = [command.arguments objectAtIndex:0];
    NSArray *dimensions = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions02:dimensions];
}
- (void) configureAvailableCustomDimensions03:(CDVInvokedUrlCommand*)command
{
    NSString *json = [command.arguments objectAtIndex:0];
    NSArray *dimensions = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions03:dimensions];
}
- (void) setCustomDimension01:(CDVInvokedUrlCommand*)command
{
    NSString *dimension = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension01:dimension];
}
- (void) setCustomDimension02:(CDVInvokedUrlCommand*)command
{
    NSString *dimension = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension02:dimension];
}
- (void) setCustomDimension03:(CDVInvokedUrlCommand*)command
{
    NSString *dimension = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension03:dimension];
}

- (void) setFacebookId:(CDVInvokedUrlCommand*)command
{
    NSString *facebookId = [command.arguments objectAtIndex:0];
    [GameAnalytics setFacebookId:facebookId];
}
- (void) setGender:(CDVInvokedUrlCommand*)command
{
    NSString *gender = [command.arguments objectAtIndex:0];
    [GameAnalytics setGender:gender];
}
- (void) setBirthYear:(CDVInvokedUrlCommand*)command
{
    int year = [[command.arguments objectAtIndex:0] intValue];
    [GameAnalytics setBirthYear:year];
}

- (void) startSession:(CDVInvokedUrlCommand*)command
{
    [GameAnalytics startSession];
}
- (void) endSession:(CDVInvokedUrlCommand*)command
{
    [GameAnalytics endSession];
}

@end