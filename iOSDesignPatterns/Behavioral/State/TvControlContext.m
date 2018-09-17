//
//  TvControlContext.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "TvControlContext.h"

@interface TvControlContext()

@property (nonatomic, strong) id<StateProtocol> state;

@end
@implementation TvControlContext

- (instancetype)initWithState:(id<StateProtocol>)state
{
    self  = [super init];
    if (self) {
        _state = state;
    }
    return self;
}

- (void)powerOn
{
    [self.state turnUp];
}

- (void)powerOff
{
    [self.state turnDown];
}



@end
