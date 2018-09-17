//
//  PhoneColleague.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneMediator.h"

//抽象同事
@interface PhoneColleague : NSObject

@property (nonatomic, strong) PhoneMediator *mediator;

- (instancetype)initWithMediator:(PhoneMediator *)mediator;

@end
