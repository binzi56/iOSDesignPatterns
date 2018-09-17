//
//  SiteAggregrate.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "SiteAggregrate.h"

@interface SiteAggregrate()

@property (nonatomic, strong) NSMutableArray *siteArr;

@end
@implementation SiteAggregrate

- (instancetype)init{
    if(self == [super init]){
        _siteArr = [NSMutableArray new];
    }
    return self;
}

- (NSInteger)getSiteArrCount
{
    return _siteArr.count;
}

- (void)insertSiteArrWithObject:(id)Obj
{
    [_siteArr addObject:Obj];
}

- (id)getObjectWithIndex:(NSInteger)index
{
    return [_siteArr objectAtIndex:index];
}

@end
