//
//  CommandInvoker.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "CommandInvoker.h"
#import "DynamicCommand.h"

@interface CommandInvoker ()

@property (nonatomic, strong) NSMutableArray *commands;
@property (nonatomic, strong) CommandReceiver *receiver;

@end
@implementation CommandInvoker


- (instancetype)init:(CommandReceiver*)receiver{
    self = [super init];
    if (self) {
        self.commands = [[NSMutableArray alloc] init];
        self.receiver = receiver;
    }
    return self;
}

//增加
- (void)increaseCount:(NSString*)value{
    [self addCommand:@"reduce:" count:value];
    [self.receiver increase:value];
}

//减少
- (void)reduceCount:(NSString*)value{
    [self addCommand:@"increase:" count:value];
    [self.receiver reduce:value];
}

-(void)addCommand:(NSString*)methodName count:(NSString*)value{
    //添加动态命令
    [self.commands addObject:[DynamicCommand createCommand:self.receiver block:^(CommandReceiver *receiver) {
        SEL method = NSSelectorFromString(methodName);
        //执行回调
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [receiver performSelector:method withObject:value];
#pragma clang diagnostic pop
    }]];
}

- (void)undo{
    if (self.commands.count > 0) {
        NSLog(@"撤销如下：...");
        //撤销->DynamicCommand
        DynamicCommand* command = [self.commands lastObject];
        [command execute];
        //移除
        [self.commands removeObject:command];
    }
}

@end
