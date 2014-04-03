//
//  Beacon.h
//  PlotIBeaconBroadcastExample
//  http://www.plotprojects.com/
//
//  Copyright (c) 2014 Floating Market BV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <CoreLocation/CoreLocation.h>

@interface Beacon : NSObject<CBPeripheralManagerDelegate> {
    CBPeripheralManager* manager;
    NSString* state;
}
@property (copy, readonly, nonatomic) NSString* state;
@property (copy, readonly, nonatomic) NSString* uuid;
@property (assign, readonly, nonatomic) int majorId;
@property (assign, readonly, nonatomic) int minorId;

@end
