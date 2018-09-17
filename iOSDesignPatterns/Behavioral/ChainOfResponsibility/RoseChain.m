//
//  RoseChain.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "RoseChain.h"

@implementation RoseChain

- (void)handlerThingWithName:(NSString *)name
{
    if ([name isEqualToString:@"Rose"]) {
        [self handler];
    }else{
        [self.nextHandle handlerThingWithName:name];
    }
}

- (void)handler
{
    NSLog(@"RoseChain handler");
}


@end
