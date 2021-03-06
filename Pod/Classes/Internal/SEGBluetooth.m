//
//  SIOBluetooth.m
//  Analytics
//
//  Created by Travis Jeffery on 4/23/14.
//  Copyright (c) 2014 Segment.io. All rights reserved.
//

#import "SEGBluetooth.h"
//Disabling because Bluetooth in iOS10 needs permission; even just #importing and referencing seems to trigger error on app submission - so rather than add unneedded permission description to app plist, I'm disabling here
//#import <CoreBluetooth/CoreBluetooth.h>

//@interface SEGBluetooth () <CBCentralManagerDelegate>
//
//@property (nonatomic, strong) CBCentralManager *manager;
//@property (nonatomic, strong) dispatch_queue_t queue;
//
//@end


@implementation SEGBluetooth

- (id)init
{
    if (self = [super init]) {
        [NSException raise:@"Bluetooth integration unimplemented" format:@"due to ios10 permission requesting -- re-implement if needed"];
//        _queue = dispatch_queue_create("io.segment.bluetooth.queue", NULL);
//        _manager = [[CBCentralManager alloc] initWithDelegate:self
//                                                        queue:_queue
//                                                      options:@{ CBCentralManagerOptionShowPowerAlertKey : @NO }];
    }
    return self;
}

- (BOOL)hasKnownState
{
    return NO;
//    return _manager && (_manager.state != CBCentralManagerStateUnknown);
}

- (BOOL)isEnabled
{
     return NO;
//    return _manager.state == CBCentralManagerStatePoweredOn;
}

- (void)centralManagerDidUpdateState:(id)central {}

@end
