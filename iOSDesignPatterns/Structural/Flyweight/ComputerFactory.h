//
//  ComputerFactory.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"

@interface ComputerFactory : NSObject

- (Computer *)computerWithDiskCache:(NSString *)diskCache;

@end
