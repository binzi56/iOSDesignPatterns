//
//  PhoneMediator.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

//抽象中介者
@class PhoneColleague;
@interface PhoneMediator : NSObject

- (void)changeWithColleague:(PhoneColleague *)colleague;

@end
