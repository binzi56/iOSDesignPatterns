//
//  HuaweiBattery.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "HuaweiBattery.h"


@interface HuaweiBattery()
{
    NSDictionary *_parames;
}

@end
@implementation HuaweiBattery

- (instancetype)init
{
    self = [super init];
    if (self) {
        _parames = @{@"capacity": @"20000mAh"};
    }
    return self;
}


- (NSDictionary *)getParames
{
    return _parames;
}


@end
