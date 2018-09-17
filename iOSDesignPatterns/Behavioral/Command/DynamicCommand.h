//
//  DynamicCommand.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "CommandReceiver.h"

typedef void(^DynamicBlock)(CommandReceiver* tm);

@interface DynamicCommand : NSObject<CommandProtocol>

- (instancetype)init:(CommandReceiver*)receiver block:(DynamicBlock)block;

+(id<CommandProtocol>)createCommand:(CommandReceiver*)receiver block:(DynamicBlock)block;


@end
