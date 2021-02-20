#import "Sharedwebcredential.h"
#import <Cordova/CDVAvailability.h>

@implementation Sharedwebcredential

- (void) save:(CDVInvokedUrlCommand*)command {
  [self.commandDelegate runInBackground:^{
    NSArray* arguments = command.arguments;
    CDVPluginResult* pluginResult = nil;

    NSString* server = [arguments objectAtIndex:0];
    NSString* username = [arguments objectAtIndex:1];
    NSString* password = [arguments objectAtIndex:2];
   
    SecAddSharedWebCredential(CFSTR(server),
                                  (__bridge CFStringRef)(username),
                                  (__bridge CFStringRef)(password),
                                  ^(CFErrorRef error) {
                                      NSLog(@"SecAddSharedWebCredential error: %@", error);
                                  });

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
  }];
}

@end
