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
    NSString *buildString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureBuild:buildString];
}
- (void) configureGameEngineVersion:(CDVInvokedUrlCommand*)command
{
    NSString *gameEngineVersionString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureEngineVersion:gameEngineVersionString];
}
- (void) configureSdkGameEngineVersion:(CDVInvokedUrlCommand*)command
{
    NSString *sdkVersion = [command.arguments objectAtIndex:0];
    [GameAnalytics configureSdkVersion:sdkVersion];
}
- (void) configureUserId:(CDVInvokedUrlCommand*)command
{
    NSString *userIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureUserId:userIdString];
}

- (void) addBusinessEvent:(CDVInvokedUrlCommand*)command
{
    NSString *currencyString = [command.arguments objectAtIndex:0];
    NSInteger amountInteger = [command.arguments objectAtIndex:1];
    NSString *itemTypeString = [command.arguments objectAtIndex:2];
    NSString *itemIdString = [command.arguments objectAtIndex:3];
    NSString *cartTypeString = [command.arguments objectAtIndex:4];
    NSString *receiptString = nil;
    
    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                                        receipt:receiptString];
}
- (void) addBusinessEventWithReceipt:(CDVInvokedUrlCommand*)command
{
    NSString *currencyString = [command.arguments objectAtIndex:0];
    NSInteger amountInteger = [command.arguments objectAtIndex:1];
    NSString *itemTypeString = [command.arguments objectAtIndex:2];
    NSString *itemIdString = [command.arguments objectAtIndex:3];
    NSString *cartTypeString = [command.arguments objectAtIndex:4];
    NSString *receiptString = [command.arguments objectAtIndex:5];
    
    [GameAnalytics addBusinessEventWithCurrency:currencyString
                                         amount:amountInteger
                                       itemType:itemTypeString
                                         itemId:itemIdString
                                       cartType:cartTypeString
                                        receipt:receiptString];
}
- (void) addResourceEvent:(CDVInvokedUrlCommand*)command
{
    NSInteger flowTypeInt = [command.arguments objectAtIndex:0];
    NSString *currencyString = [command.arguments objectAtIndex:1];
    NSNumber *amountNumber = [command.arguments objectAtIndex:2];
    NSString *itemTypeString = [command.arguments objectAtIndex:3];
    NSString *itemIdString = [command.arguments objectAtIndex:4];
    
    [GameAnalytics addResourceEventWithFlowType:flowTypeInt
                                       currency:currencyString
                                         amount:amountNumber
                                       itemType:itemTypeString
                                         itemId:itemIdString];
}
- (void) addProgressionEvent:(CDVInvokedUrlCommand*)command
{
    NSInteger progressionStatusInt = [command.arguments objectAtIndex:0];
    NSString *progression01String = [command.arguments objectAtIndex:1];
    NSString *progression02String = [command.arguments objectAtIndex:2];
    NSString *progression03String = [command.arguments objectAtIndex:3];
    
    [GameAnalytics addProgressionEventWithProgressionStatus:progressionStatusInt
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String];
}
- (void) addProgressionEventWithScore:(CDVInvokedUrlCommand*)command
{
    NSInteger progressionStatusInt = [command.arguments objectAtIndex:0];
    NSString *progression01String = [command.arguments objectAtIndex:1];
    NSString *progression02String = [command.arguments objectAtIndex:2];
    NSString *progression03String = [command.arguments objectAtIndex:3];
    NSInteger scoreInt = [command.arguments objectAtIndex:4];
    
    [GameAnalytics addProgressionEventWithProgressionStatus:progressionStatusInt
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String
                                              score:scoreInt];
}
- (void) addDesignEvent:(CDVInvokedUrlCommand*)command
{
    NSString *eventIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics addDesignEventWithEventId:eventIdString value:nil];
}
- (void) addDesignEventWithValue:(CDVInvokedUrlCommand*)command
{
    NSString *eventIdString = [command.arguments objectAtIndex:0];
    NSNumber *valueNumber = [command.arguments objectAtIndex:1];
    [GameAnalytics addDesignEventWithEventId:eventIdString value:valueNumber];
}

- (void) addErrorEvent:(CDVInvokedUrlCommand*)command
{
    NSInteger severityInt = [command.arguments objectAtIndex:0];
    NSString *messageString = [command.arguments objectAtIndex:1];
    [GameAnalytics addErrorEventWithSeverity:severityInt message:messageString];
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
    NSString *jsonString = [command.arguments objectAtIndex:0];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions01:json];
}
- (void) configureAvailableCustomDimensions02:(CDVInvokedUrlCommand*)command
{
    NSString *jsonString = [command.arguments objectAtIndex:0];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions02:json];
}
- (void) configureAvailableCustomDimensions03:(CDVInvokedUrlCommand*)command
{
    NSString *jsonString = [command.arguments objectAtIndex:0];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions03:json];
}
- (void) setCustomDimension01:(CDVInvokedUrlCommand*)command
{
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension01:customDimensionString];
}
- (void) setCustomDimension02:(CDVInvokedUrlCommand*)command
{
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension02:customDimensionString];
}
- (void) setCustomDimension03:(CDVInvokedUrlCommand*)command
{
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension03:customDimensionString];
}

- (void) setFacebookId:(CDVInvokedUrlCommand*)command
{
    NSString *facebookIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics setFacebookId:facebookIdString];
}
- (void) setGender:(CDVInvokedUrlCommand*)command
{
    NSString *gender = [command.arguments objectAtIndex:0];
    [GameAnalytics setGender:gender];
}
- (void) setBirthYear:(CDVInvokedUrlCommand*)command
{
    NSInteger birthYearInteger = [command.arguments objectAtIndex:0];
    [GameAnalytics setBirthYear:birthYearInteger];
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