//
//  AppDelegate.m
//  PlotIBeaconBroadcastExample
//  http://www.plotprojects.com/
//
//  Copyright (c) 2014 Floating Market BV. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize beacon;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    beacon = [[Beacon alloc] init];
    return YES;
}
						
@end
