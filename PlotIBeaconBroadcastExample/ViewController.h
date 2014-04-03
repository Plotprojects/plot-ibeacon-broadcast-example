//
//  ViewController.h
//  PlotIBeaconBroadcastExample
//  http://www.plotprojects.com/
//
//  Copyright (c) 2014 Floating Market BV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer* timer;
    
    IBOutlet UILabel* statusLabel;
    IBOutlet UILabel* uuidLabel;
    IBOutlet UILabel* majorIdLabel;
    IBOutlet UILabel* minorIdLabel;
}

@end
