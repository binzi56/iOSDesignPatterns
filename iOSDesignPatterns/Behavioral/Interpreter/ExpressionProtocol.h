//
//  ExpressionProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Context.h"

@protocol ExpressionProtocol <NSObject>

- (CGFloat)interpreterWithContent:(Context *)context;

@end
