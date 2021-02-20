#import <Cordova/CDVPlugin.h>
#import <Security/Security.h>

@interface Sharedwebcredential : CDVPlugin {
}

- (void) save:(CDVInvokedUrlCommand*)command;

@end
