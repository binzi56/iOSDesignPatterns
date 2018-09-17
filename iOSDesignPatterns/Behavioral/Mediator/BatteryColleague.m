
//
//  BatteryColleague.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "BatteryColleague.h"

@implementation BatteryColleague

- (instancetype)initWithMediator:(PhoneMediator *)mediator
{
    self =  [super initWithMediator:mediator];
    if (self) {
        
    }
    return self;
}

- (void)getElectricity
{
    NSLog(@"获取电量大小~~~");
}


@end
