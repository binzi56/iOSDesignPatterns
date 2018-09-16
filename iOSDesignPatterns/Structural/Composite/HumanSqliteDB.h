//
//  HumanSqliteDB.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SqliteDBProtocol.h"

@interface HumanSqliteDB : NSObject<SqliteDBProtocol>


@property (nonatomic, strong) NSString *humanDBName;

- (instancetype)initWithHumanDBName:(NSString *)humanDBName;

@end
