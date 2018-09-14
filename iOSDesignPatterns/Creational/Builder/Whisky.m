//
//  Whisky.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "Whisky.h"
#import "Wine.h"

@interface Whisky()

@property (nonatomic, strong) Wine *wine;

@end
@implementation Whisky


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.wine = [[Wine alloc] init];
    }
    return self;
}

- (void)configurationMaterial
{
    self.wine.bottles = @"";
    NSLog(@"配置~~Whisky");
}

- (void)addPackaging
{
    self.wine.wineWater = @"";
    NSLog(@"包装~~Whisky");
}

@end
