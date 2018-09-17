//
//  TvControlContext.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateProtocol.h"

@interface TvControlContext : NSObject

- (instancetype)initWithState:(id<StateProtocol>)state;

- (void)powerOn;

- (void)powerOff;

@end
