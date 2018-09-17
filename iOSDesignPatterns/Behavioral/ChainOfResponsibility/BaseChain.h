//
//  BaseChain.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseChain : NSObject

@property (nonatomic, strong) BaseChain *nextHandle;

- (void)handlerThingWithName:(NSString *)name;

@end
