//
//  ItemB.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ItemB.h"
#import "VisitorProtocol.h"

@implementation ItemB

- (void)accept:(id <VisitorProtocol>)visitor
{
    [visitor visitItem:self];
}

- (void)operation
{
    NSLog(@"ItemB operation start.");
}

- (void)itemBSpecialAction
{
    NSLog(@"ItemB itemASpecialAction");
}

@end
