//
//  ComputerFactory.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ComputerFactory.h"

@interface ComputerFactory()

@property (nonatomic, strong) NSMutableDictionary *factoryDic;

@end
@implementation ComputerFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _factoryDic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (Computer *)computerWithDiskCache:(NSString *)diskCache
{
    Computer *computer = [_factoryDic objectForKey:diskCache];
    if (!computer) {
        computer = [[Computer alloc] initComputerWithDiskCache:diskCache];
        [_factoryDic setValue:computer forKey:diskCache];
    }
    return computer;
}

@end
