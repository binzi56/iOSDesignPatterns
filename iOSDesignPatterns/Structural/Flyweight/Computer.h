//
//  Computer.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerProtocol.h"

@interface Computer : NSObject<ComputerProtocol>

@property (nonatomic, strong) NSString *diskCache;


- (instancetype)initComputerWithDiskCache:(NSString *)diskCache;


@end
