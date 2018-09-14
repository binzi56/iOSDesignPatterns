//
//  PhoneProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PhoneProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame;

- (NSString *)getPhoneName;

@end
