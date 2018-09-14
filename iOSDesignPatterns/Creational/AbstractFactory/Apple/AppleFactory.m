//
//  AppleFactory.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AppleFactory.h"
#import "ApplePhone.h"
#import "AppleBattery.h"

@implementation AppleFactory

- (id<PhoneProtocol>)getPhoneWithFrame:(CGRect)frame
{
    return [[ApplePhone alloc] initWithFrame:frame];
}

- (id<BatteryProtocol>)getBattery
{
    return [[AppleBattery alloc] init];
}

@end
