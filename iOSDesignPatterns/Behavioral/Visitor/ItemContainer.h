//
//  ItemContainer.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemProtocol.h"

@interface ItemContainer : NSObject

//添加元素
- (void)addItem:(id <ItemProtocol>)item withKey:(NSString *)key;

//获取所有元素的键值
- (NSArray *)allKeys;

//根据元素键值获取元素
- (id<ItemProtocol>)itemWithKey:(NSString *)key;

@end
