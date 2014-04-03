//
//  Beacon.m
//  PlotIBeaconBroadcastExample
//  http://www.plotprojects.com/
//
//  Copyright (c) 2014 Floating Market BV. All rights reserved.
//

#import "Beacon.h"

@implementation Beacon
@synthesize state;
@synthesize uuid;
@synthesize majorId;
@synthesize minorId;

-(id)init {
    if ((self = [super init])) {
        manager = [[CBPeripheralManager alloc] initWithDelegate:self
                                                          queue:nil
                                                        options:nil];
    }
    return self;
}

-(NSString*)uuid {
    return @"B9407F30-F5F8-466E-AFF9-25556B57FE6D";
}

-(int)majorId {
    return 4;
}

-(int)minorId {
    return 4;
}

-(void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral {
    if (peripheral.state == CBPeripheralManagerStatePoweredOn) {
        state = @"Enabled";
        
        NSUUID *nsUuid = [[NSUUID alloc] initWithUUIDString:[self uuid]];
        
        CLBeaconRegion* region = [[CLBeaconRegion alloc] initWithProximityUUID:nsUuid
                                                                         major:[self majorId]
                                                                         minor:[self minorId]
                                                                    identifier:@"plot-testregion"];
        
        [manager startAdvertising:[region peripheralDataWithMeasuredPower:nil]];
    } else if (peripheral.state == CBPeripheralManagerStatePoweredOff) {
        state = @"Stopped";
        [manager stopAdvertising];
    } else if (peripheral.state == CBPeripheralManagerStateUnsupported) {
        state = @"Unsupported";
    }
}

@end
