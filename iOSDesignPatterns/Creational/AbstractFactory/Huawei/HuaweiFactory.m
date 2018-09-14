//
//  HuaweiFactory.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "HuaweiFactory.h"
#import "HuaweiPhone.h"
#import "HuaweiBattery.h"

@implementation HuaweiFactory

- (id<PhoneProtocol>)getPhoneWithFrame:(CGRect)frame
{
    return [[HuaweiPhone alloc] initWithFrame:frame];
}


- (id<BatteryProtocol>)getBattery
{
    return [[HuaweiBattery alloc] init];
}

@end
