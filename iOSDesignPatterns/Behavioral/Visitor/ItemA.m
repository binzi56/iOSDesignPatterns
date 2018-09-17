//
//  ItemA.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ItemA.h"
#import "VisitorProtocol.h"

@implementation ItemA

- (void)accept:(id <VisitorProtocol>)visitor
{
    [visitor visitItem:self];
}

- (void)operation
{
    NSLog(@"ItemA operation start.");
}

- (void)itemASpecialAction
{
    NSLog(@"ItemA itemASpecialAction");
}

@end
