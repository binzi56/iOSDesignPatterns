//
//  ChinaFlagFactory.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ChinaFlagFactory.h"
#import "ChinaFlag.h"

@implementation ChinaFlagFactory

+(Flag *)createFlag
{
    return [[ChinaFlag alloc] init];
}


@end
