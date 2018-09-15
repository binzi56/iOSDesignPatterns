//
//  Adapter.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

- (NSString *)getAllMessage
{
    return [NSString stringWithFormat:@"%@ lov Rose", [self getAdapterName]];
}


@end
