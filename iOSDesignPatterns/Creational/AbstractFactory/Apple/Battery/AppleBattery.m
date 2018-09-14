//
//  AppleBattery.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AppleBattery.h"
@interface AppleBattery()
{
    NSDictionary *_parames;
}
@end
@implementation AppleBattery

- (instancetype)init
{
    self = [super init];
    if (self) {
        _parames = @{@"capacity": @"10000mAh"};
    }
    return self;
}

- (NSDictionary *)getParames
{
    return _parames;
}

@end
