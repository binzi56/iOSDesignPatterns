//
//  DecPhone.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StaticPhoneProtocol.h"
#import "StaticPhone.h"

@interface DecPhone : NSObject<StaticPhoneProtocol>

@property (nonatomic, strong) StaticPhone *phone;

@end
