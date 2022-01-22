#import "PluginZoomedPlugin.h"

@implementation PluginZoomedPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:@"plugin_zoomed"
                                     binaryMessenger:[registrar messenger]];
    PluginZoomedPlugin* instance = [[PluginZoomedPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"isScreenZoomed" isEqualToString:call.method]) {
        BOOL isZoomed = [[UIScreen mainScreen] scale] != [[UIScreen mainScreen] nativeScale];
        result(@(isZoomed));
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end
