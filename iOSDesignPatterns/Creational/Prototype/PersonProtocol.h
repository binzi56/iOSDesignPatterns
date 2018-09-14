//
//  PersonProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonProtocol <NSObject>

- (instancetype)initWithName:(NSString *)name;

-(void)addBook:(NSString *)bookName;

@end
