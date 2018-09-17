//
//  PhoneColleague.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "PhoneColleague.h"

@interface PhoneColleague()



@end
@implementation PhoneColleague

- (instancetype)initWithMediator:(PhoneMediator *)mediator
{
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}


@end
