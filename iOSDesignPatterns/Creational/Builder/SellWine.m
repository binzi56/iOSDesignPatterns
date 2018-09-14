//
//  SellWine.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "SellWine.h"

@implementation SellWine

- (void)sellPrepare
{
    [self.delegate configurationMaterial];
    [self.delegate addPackaging];
}

@end
