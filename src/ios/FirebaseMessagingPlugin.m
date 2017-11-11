#import <Cordova/CDVPlugin.h>
#import "FirebaseMessagingPlugin.h"
@import FirebaseMessaging;

@implementation FirebaseMessagingPlugin

- (void)doSomething:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:
                    [[FIRInstanceID instanceID] token]];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
