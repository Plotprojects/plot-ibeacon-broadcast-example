//
//  AppDelegate.h
//  PlotIBeaconBroadcastExample
//  http://www.plotprojects.com/
//
//  Copyright (c) 2014 Floating Market BV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Beacon.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    Beacon* beacon;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, readonly, nonatomic) Beacon* beacon;

@end
