//
//  JackDB.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "JackDB.h"

@implementation JackDB

- (void)addDBData:(id<SqliteDBProtocol>)data
{
    [super addDBData:data];
    NSLog(@"JackDB~~addDB:\narr:%@", self.humanDBName);
}

- (void)removeDBData:(id<SqliteDBProtocol>)data
{
    [super removeDBData:data];
    NSLog(@"JackDB~~removeDB:\narr:%@", self.humanDBName);
}

- (void)searchAllDBData
{
    [super searchAllDBData];
    NSLog(@"JackDB~~searchAllDBData:\narr:%@", self.humanDBName);
}

@end
