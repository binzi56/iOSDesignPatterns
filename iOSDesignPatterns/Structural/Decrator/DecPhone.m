//
//  DecPhone.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "DecPhone.h"

@implementation DecPhone

- (instancetype)init
{
    self = [super init];
    if (self) {
        _phone = [[StaticPhone alloc] init];
    }
    return self;
}

@end
