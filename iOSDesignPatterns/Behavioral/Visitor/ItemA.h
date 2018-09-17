//
//  ItemA.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemProtocol.h"

@interface ItemA : NSObject<ItemProtocol>

//itemA特有的操作
- (void)itemASpecialAction;

@end
