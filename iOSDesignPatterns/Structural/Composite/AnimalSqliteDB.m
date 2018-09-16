//
//  AnimalSqliteDB.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AnimalSqliteDB.h"

@interface AnimalSqliteDB()

@property (nonatomic, strong) NSMutableArray *animalArr;

@end
@implementation AnimalSqliteDB

- (instancetype)initWithAnimalDBName:(NSString *)animalDBName age:(NSInteger)age
{
    self = [super init];
    if (self) {
        _animalDBName = animalDBName;
        _age = age;
        _animalArr = [NSMutableArray array];
    }
    return self;
}

- (void)addDBData:(id<SqliteDBProtocol>)data
{
    [_animalArr addObject:data];
}

- (void)removeDBData:(id<SqliteDBProtocol>)data
{
    [_animalArr removeObject:data];
}

- (void)searchAllDBData
{
    NSLog(@"AnimalSqliteDB~~searchAllDBData:\n动物名称:%@\n动物年龄:%ld", self.animalDBName, self.age);
    for (id<SqliteDBProtocol> animalDB in _animalArr) {
        [animalDB searchAllDBData];
    }
}

@end
