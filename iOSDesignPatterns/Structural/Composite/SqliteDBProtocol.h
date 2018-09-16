//
//  SqliteDBProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SqliteDBProtocol <NSObject>

- (void)addDBData:(id<SqliteDBProtocol>)data;

- (void)removeDBData:(id<SqliteDBProtocol>)data;

- (void)searchAllDBData;


@end
