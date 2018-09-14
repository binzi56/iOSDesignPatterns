//
//  PhoneFactoryProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhoneProtocol.h"
#import "BatteryProtocol.h"

@protocol PhoneFactoryProtocol <NSObject>

//获取手机
- (id<PhoneProtocol>)getPhoneWithFrame:(CGRect)frame;

//获取电池
- (id<BatteryProtocol>)getBattery;

@end
