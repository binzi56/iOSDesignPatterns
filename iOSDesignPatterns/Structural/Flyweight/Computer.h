//
//  Computer.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject

@property (nonatomic, strong) NSString *diskCache;


- (instancetype)initComputerWithDiskCache:(NSString *)diskCache;


@end
