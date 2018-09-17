//
//  JackChain.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "JackChain.h"

@implementation JackChain

- (void)handlerThingWithName:(NSString *)name
{
    if ([name isEqualToString:@"Jack"]) {
        [self handler];
    }else{
        [self.nextHandle handlerThingWithName:name];
    }
}

- (void)handler
{
    NSLog(@"JackChain handler");
}

@end
