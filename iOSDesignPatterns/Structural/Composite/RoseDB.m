//
//  RoseDB.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "RoseDB.h"

@implementation RoseDB

- (void)addDBData:(id<SqliteDBProtocol>)data
{
    NSLog(@"RoseDB~~addDB:\narr:%@", self.humanDBName);
}

- (void)removeDBData:(id<SqliteDBProtocol>)data
{
    NSLog(@"RoseDB~~removeDB:\narr:%@", self.humanDBName);
}

- (void)searchAllDBData
{
    NSLog(@"RoseDB~~searchAllDBData:\narr:%@", self.humanDBName);
}


@end
