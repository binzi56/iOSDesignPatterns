//
//  Visitor.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "Visitor.h"

@interface Visitor ()

@property (nonatomic, weak) ItemA *itemA;
@property (nonatomic, weak) ItemB *itemB;

@end

@implementation Visitor

- (void)visitItemA:(ItemA *)itemA
{
    self.itemA = itemA;
    [itemA operation];
    [itemA itemASpecialAction];
}

- (void)visitItemB:(ItemB *)itemB
{
    self.itemB = itemB;
    [itemB operation];
    [itemB itemBSpecialAction];
}

- (void)visitItem:(id<ItemProtocol>)item
{
    if ([item isMemberOfClass:[ItemA class]]) {
        [self visitItemA:item];
    }else if ([item isMemberOfClass:[ItemB class]]){
        [self visitItemB:item];
    }
}

@end
