//
//  StudentTicketIterator.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "TicketIterator.h"
#import "SiteAggregrate.h"

@interface StudentTicketIterator : TicketIterator

- (instancetype)initWithSiteAggregrate:(SiteAggregrate *)siteAggregrate;

@end
