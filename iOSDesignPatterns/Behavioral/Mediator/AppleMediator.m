//
//  AppleMediator.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AppleMediator.h"

@interface AppleMediator()

@property (nonatomic, strong) BatteryColleague *battery;
@property (nonatomic, strong) CPUColleague *cpu;

@end
@implementation AppleMediator

- (void)changeWithColleague:(PhoneColleague *)colleague
{
    if (colleague == _cpu) {
        NSLog(@"处理CPU~~~~");
    }else if (colleague == _battery){
        NSLog(@"处理battery~~~");
    }
}

- (void)setCPU:(CPUColleague *)cpu
{
    _cpu = cpu;
}

- (void)setBattery:(BatteryColleague *)battery
{
    _battery = battery;
}


@end
