//
//  MilkTea.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "MilkTea.h"

@interface MilkTea()


@end
@implementation MilkTea

- (instancetype)init
{
    self = [super init];
    if (self) {
        _adds = [MilkTeaAdds new];
    }
    return self;
}

- (void)makeCoffee
{
    NSLog(@"MilkTea~~~makeCoffee");
}


@end
