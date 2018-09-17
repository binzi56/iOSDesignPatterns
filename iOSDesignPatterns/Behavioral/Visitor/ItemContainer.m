//
//  ItemContainer.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ItemContainer.h"

@interface ItemContainer()

@property (nonatomic, strong) NSMutableDictionary *itemDic;

@end
@implementation ItemContainer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _itemDic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)addItem:(id<ItemProtocol>)item withKey:(NSString *)key
{
    NSParameterAssert(item);
    NSParameterAssert(key);
    [_itemDic setValue:item forKey:key];
}

- (NSArray *)allKeys
{
    return [_itemDic allKeys];
}

- (id<ItemProtocol>)itemWithKey:(NSString *)key
{
    NSParameterAssert(key);
    return [_itemDic valueForKey:key];
}

@end
