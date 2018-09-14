//
//  HuaweiPhone.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "HuaweiPhone.h"

@implementation HuaweiPhone

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        NSLog(@"初始化~~HuaweiPhone");
    }
    return self;
}

- (NSString *)getPhoneName
{
    return @"HuaweiPhone";
}

@end
