//
//  Human.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "Human.h"

static Human * _per = nil;
@implementation Human

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _per = [super allocWithZone:zone];
    });
    return _per;
}

+(instancetype)sharedInstance
{
    if (_per == nil) {
        _per = [[super alloc]init];
    }
    return _per;
}

-(id)copyWithZone:(NSZone *)zone
{
    return _per;
}

-(id)mutableCopyWithZone:(NSZone *)zone
{
    return _per;
}
@end
