//
//  ViewController.m
//  PlotIBeaconBroadcastExample
//  http://www.plotprojects.com/
//
//  Copyright (c) 2014 Floating Market BV. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(updateStatus)
                                           userInfo:nil
                                            repeats:YES];
}

-(void)updateStatus {
    AppDelegate* delegate = (AppDelegate*) [UIApplication sharedApplication].delegate;
    Beacon* beacon = delegate.beacon;
    statusLabel.text = beacon.state;
    uuidLabel.text = beacon.uuid;
    majorIdLabel.text = [NSString stringWithFormat:@"MajorId: %d", beacon.majorId];
    minorIdLabel.text = [NSString stringWithFormat:@"MinorId: %d", beacon.minorId];
}

-(IBAction)openSite:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.plotprojects.com"]];
}

@end
