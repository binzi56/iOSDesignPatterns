//
//  CommandInvoker.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface CommandInvoker : NSObject

- (instancetype)init:(CommandReceiver*)receiver;

//增加
- (void)increaseCount:(NSString*)value;
//减少
- (void)reduceCount:(NSString*)value;
//撤销
- (void)undo;

@end
