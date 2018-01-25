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
- (void) configureGameEngineVersion:(CDVInvokedUrlCommand*)command {
    NSString *gameEngineVersionString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureEngineVersion:gameEngineVersionString];
}
- (void) configureUserId:(CDVInvokedUrlCommand*)command {
    NSString *userIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics configureUserId:userIdString];
}

- (void) addBusinessEvent:(CDVInvokedUrlCommand*)command {
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
- (void) addBusinessEventWithReceipt:(CDVInvokedUrlCommand*)command {
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
- (void) addResourceEvent:(CDVInvokedUrlCommand*)command {
    NSString *currencyString = [command.arguments objectAtIndex:0];
    NSNumber *amountNumber = [command.arguments objectAtIndex:1];
    NSString *itemTypeString = [command.arguments objectAtIndex:2];
    NSString *itemIdString = [command.arguments objectAtIndex:3];
    NSInteger flowTypeInt = [command.arguments objectAtIndex:4];
    
    [GameAnalytics addResourceEventWithFlowType:(GAResourceFlowType)flowTypeInt
                                       currency:currencyString
                                         amount:amountNumber
                                       itemType:itemTypeString
                                         itemId:itemIdString];
}
- (void) addProgressionEvent:(CDVInvokedUrlCommand*)command {
    NSString *progression01String = [command.arguments objectAtIndex:0];
    NSString *progression02String = [command.arguments objectAtIndex:1];
    NSString *progression03String = [command.arguments objectAtIndex:2];
    NSInteger progressionStatusInt = [command.arguments objectAtIndex:3];
    
    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatusInt
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String];
}
- (void) addProgressionEventWithScore:(CDVInvokedUrlCommand*)command {
    NSString *progression01String = [command.arguments objectAtIndex:0];
    NSString *progression02String = [command.arguments objectAtIndex:1];
    NSString *progression03String = [command.arguments objectAtIndex:2];
    NSInteger progressionStatusInt = [command.arguments objectAtIndex:3];
    NSInteger scoreInt = [command.arguments objectAtIndex:4];
    
    [GameAnalytics addProgressionEventWithProgressionStatus:(GAProgressionStatus)progressionStatusInt
                                              progression01:progression01String
                                              progression02:progression02String
                                              progression03:progression03String
                                              score:scoreInt];
}
- (void) addDesignEvent:(CDVInvokedUrlCommand*)command {
    NSString *eventIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics addDesignEventWithEventId:eventIdString value:nil];
}
- (void) addDesignEventWithValue:(CDVInvokedUrlCommand*)command {
    NSString *eventIdString = [command.arguments objectAtIndex:0];
    NSNumber *valueNumber = [command.arguments objectAtIndex:1];
    [GameAnalytics addDesignEventWithEventId:eventIdString value:valueNumber];
}

- (void) addErrorEvent:(CDVInvokedUrlCommand*)command {
    NSString *messageString = [command.arguments objectAtIndex:0];
    NSInteger severityInt = [command.arguments objectAtIndex:1];
    [GameAnalytics addErrorEventWithSeverity:(GAErrorSeverity)severityInt message:messageString];
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
    NSString *jsonString = [command.arguments objectAtIndex:0];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions01:json];
}
- (void) configureAvailableCustomDimensions02:(CDVInvokedUrlCommand*)command {
    NSString *jsonString = [command.arguments objectAtIndex:0];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions02:json];
}
- (void) configureAvailableCustomDimensions03:(CDVInvokedUrlCommand*)command {
    NSString *jsonString = [command.arguments objectAtIndex:0];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                                     options:kNilOptions
                                                       error:nil];
    [GameAnalytics configureAvailableCustomDimensions03:json];
}
- (void) setCustomDimension01:(CDVInvokedUrlCommand*)command {
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension01:customDimensionString];
}
- (void) setCustomDimension02:(CDVInvokedUrlCommand*)command {
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension02:customDimensionString];
}
- (void) setCustomDimension03:(CDVInvokedUrlCommand*)command {
    NSString *customDimensionString = [command.arguments objectAtIndex:0];
    [GameAnalytics setCustomDimension03:customDimensionString];
}

- (void) setFacebookId:(CDVInvokedUrlCommand*)command {
    NSString *facebookIdString = [command.arguments objectAtIndex:0];
    [GameAnalytics setFacebookId:facebookIdString];
}
- (void) setGender:(CDVInvokedUrlCommand*)command {
    NSInteger gender = [command.arguments objectAtIndex:0];
    if(gender == 1)
    {
        [GameAnalytics setGender:@"male"];
    }
    else if(gender == 2)
    {
        [GameAnalytics setGender:@"female"];
    }
}
- (void) setBirthYear:(CDVInvokedUrlCommand*)command {
    NSInteger birthYearInteger = [command.arguments objectAtIndex:0];
    [GameAnalytics setBirthYear:birthYearInteger];
}

- (void) startSession:(CDVInvokedUrlCommand*)command {
    [GameAnalytics startSession];
}
- (void) endSession:(CDVInvokedUrlCommand*)command {
    [GameAnalytics endSession];
}

@end