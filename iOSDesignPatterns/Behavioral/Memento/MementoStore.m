//
//  MementoStore.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "MementoStore.h"

@implementation MementoStore

- (instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        _dataArr = array;
    }
    return self;
}

@end
