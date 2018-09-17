//
//  DynamicCommand.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "DynamicCommand.h"

@interface DynamicCommand()

@property(nonatomic, strong) CommandReceiver* receiver;
@property(nonatomic, strong) DynamicBlock block;

@end
@implementation DynamicCommand

- (instancetype)init:(CommandReceiver *)receiver block:(DynamicBlock)block
{
    self = [super init];
    if (self) {
        _receiver = receiver;
        _block = block;
    }
    return self;
}

-(void)execute{
    self.block(self.receiver);
}

+ (id<CommandProtocol>)createCommand:(CommandReceiver *)receiver block:(DynamicBlock)block
{
   return [[DynamicCommand alloc] init:receiver block:block];
}

@end
