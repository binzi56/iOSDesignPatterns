//
//  StudentTicketIterator.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "StudentTicketIterator.h"

@interface StudentTicketIterator()

@property (nonatomic, strong) SiteAggregrate *site;
@property (nonatomic, assign) NSInteger currentIndex;

@end
@implementation StudentTicketIterator

- (instancetype)initWithSiteAggregrate:(SiteAggregrate *)siteAggregrate
{
    self = [super init];
    if (self) {
        _site = siteAggregrate;
    }
    return self;
}

- (id)first
{
    return [_site getObjectWithIndex:0];
}

- (id)next
{
    _currentIndex++;
    if (_currentIndex < [_site getSiteArrCount]) {
        return [_site getObjectWithIndex:_currentIndex];
    }else{
        return nil;
    }
}

- (BOOL)hasNext
{
    return _currentIndex >= [_site getSiteArrCount] ? YES : NO;
}

- (id)getCurrentObj
{
    return [_site getObjectWithIndex:_currentIndex];
}

@end
