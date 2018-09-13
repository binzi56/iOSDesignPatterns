//
//  AmericanFlagFactory.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AmericanFlagFactory.h"
#import "AmericanFlag.h"

@implementation AmericanFlagFactory

+ (Flag *)createFlag
{
    return [[AmericanFlag alloc] init];
}

@end
