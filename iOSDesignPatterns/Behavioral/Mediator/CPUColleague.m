//
//  CPUColleague.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "CPUColleague.h"

@implementation CPUColleague

- (instancetype)initWithMediator:(PhoneMediator *)mediator
{
    self =  [super initWithMediator:mediator];
    if (self) {
        
    }
    return self;
}

- (void)getMemoryCache
{
    NSLog(@"获取缓存大小~~~");
}

- (void)load
{
    [self.mediator changeWithColleague:self];
}

@end
