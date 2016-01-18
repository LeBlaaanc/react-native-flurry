#import "RNFlurry.h"
#import "Flurry.h"

@implementation RNFlurry

RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(startSession, startSession
                 : (NSString*)apiKey)
{
    [Flurry startSession:apiKey];
}

RCT_REMAP_METHOD(setUserID, setUserID
                 : (NSString*)userID)
{
    [Flurry setUserID:userID];
}

RCT_REMAP_METHOD(logEvent, logEvent
                 : (NSString*)eventName)
{
    [Flurry logEvent:eventName];
}

RCT_REMAP_METHOD(logEventWithParameters, logEvent
                 : (NSString*)eventName withParameters
                 : (NSDictionary*)params)
{
    [Flurry logEvent:eventName withParameters:params];
}

RCT_REMAP_METHOD(logError, logError
                 : (NSString*)title message
                 : (NSString*)message)
{
    [Flurry logError:title message:message error:nil];
}

@end

