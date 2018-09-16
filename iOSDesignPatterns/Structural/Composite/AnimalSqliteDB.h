//
//  AnimalSqliteDB.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SqliteDBProtocol.h"

@interface AnimalSqliteDB : NSObject<SqliteDBProtocol>

@property (nonatomic, strong) NSString *animalDBName;

@property (nonatomic, assign) NSInteger age;

- (instancetype)initWithAnimalDBName:(NSString *)animalDBName age:(NSInteger)age;

@end
