//
//  HumanSqliteDB.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "HumanSqliteDB.h"

@interface HumanSqliteDB()

@property (nonatomic, strong) NSMutableArray *humanArr;

@end
@implementation HumanSqliteDB


- (instancetype)initWithHumanDBName:(NSString *)humanDBName
{
    self = [super init];
    if (self) {
        _humanDBName = humanDBName;
        _humanArr = [NSMutableArray array];
    }
    return self;
}

- (void)addDBData:(id<SqliteDBProtocol>)data
{
    NSLog(@"HumanSqliteDB~~addDBData:\n数据库名称:%@", self.humanDBName);
    [_humanArr addObject:data];
}

- (void)removeDBData:(id<SqliteDBProtocol>)data
{
    NSLog(@"HumanSqliteDB~~removeDBData:\n数据库名称:%@", self.humanDBName);
    [_humanArr removeObject:data];
}

- (void)searchAllDBData
{
    NSLog(@"HumanSqliteDB~~searchAllDBData:\n数据库名称:%@", self.humanDBName);
    for (id<SqliteDBProtocol> humanDB in _humanArr) {
        [humanDB searchAllDBData];
    }
}



@end
