//
//  BaseChain.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "BaseChain.h"

@implementation BaseChain

- (instancetype)init
{
    self = [super init];
    if (self) {
        _nextHandle = [BaseChain new];
    }
    return self;
}

- (void)handlerThingWithName:(NSString *)name
{
    NSLog(@"BaseChain~~~name:%@", name);
}

@end
