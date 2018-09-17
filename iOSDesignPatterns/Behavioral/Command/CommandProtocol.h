//
//  CommandProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandReceiver.h"

@protocol CommandProtocol <NSObject>

-(void)execute;

@end
