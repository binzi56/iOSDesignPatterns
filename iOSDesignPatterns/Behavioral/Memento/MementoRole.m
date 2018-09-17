//
//  MementoRole.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "MementoRole.h"

@interface MementoRole()

@end
@implementation MementoRole

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

@end
