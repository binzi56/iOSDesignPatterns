//
//  Computer.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "Computer.h"

@implementation Computer

- (instancetype)initComputerWithDiskCache:(NSString *)diskCache
{
    self = [super init];
    if (self) {
        _diskCache = diskCache;
    }
    return self;
}

- (void)showComputerInfoWithComputerName:(NSString *)computerName
{
    if ([computerName isEqualToString:@"MacBook Air"]) {
        if ([_diskCache isEqualToString:@"128G"]) {
            NSLog(@"MacBook Air\n128G\n6200RMB");
        }else if ([_diskCache isEqualToString:@"512G"]){
            NSLog(@"MacBook Air\n512G\n7300RMB");
        }
    }else if([computerName isEqualToString:@"MacBook Pro"]){
        if ([_diskCache isEqualToString:@"128G"]) {
            NSLog(@"MacBook Pro\n128G\n8728RMB");
        }else if ([_diskCache isEqualToString:@"512G"]){
            NSLog(@"MacBook Pro\n512G\n10586RMB");
        }
    }
}

@end
