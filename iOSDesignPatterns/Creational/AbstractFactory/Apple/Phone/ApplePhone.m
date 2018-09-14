//
//  ApplePhone.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ApplePhone.h"

@implementation ApplePhone


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        NSLog(@"初始化~~ApplePhone");
    }
    return self;
}

- (NSString *)getPhoneName
{
    return @"ApplePhone";
}

@end
