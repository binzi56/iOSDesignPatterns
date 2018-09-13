//
//  FlagFactoryProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Flag;
@protocol FlagFactoryProtocol <NSObject>

+ (Flag *)createFlag;

@end
