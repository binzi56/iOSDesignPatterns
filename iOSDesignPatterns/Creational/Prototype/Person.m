//
//  Person.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "Person.h"

@interface Person()

@end
@implementation Person

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
        _book = [NSMutableArray array];
    }
    return self;
}

-(void)addBook:(NSString *)bookName{
    [_book addObject:bookName];
}

-(id)copyWithZone:(NSZone *)zone{
    Person *prototypePer = [[[self class] allocWithZone:zone]initWithName:_name];
    prototypePer.book = [_book mutableCopy];
    return prototypePer;
    
}


@end
