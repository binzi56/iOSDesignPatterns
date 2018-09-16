//
//  GetUpBed.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "GetUpBed.h"

@implementation GetUpBed

- (void)brushingTeeth
{
    NSLog(@"刷牙~~~");
}

- (void)washYourFace
{
    NSLog(@"洗脸~~~");
}

- (void)wearClothes
{
    NSLog(@"穿衣服~~~");
}

- (void)getUpBed
{
    [self brushingTeeth];
    [self washYourFace];
    [self wearClothes];
}

@end
