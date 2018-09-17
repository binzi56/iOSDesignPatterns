//
//  AppleMediator.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "PhoneMediator.h"
#import "BatteryColleague.h"
#import "CPUColleague.h"

@interface AppleMediator : PhoneMediator

- (void)setCPU:(CPUColleague *)cpu;

- (void)setBattery:(BatteryColleague *)battery;

@end
