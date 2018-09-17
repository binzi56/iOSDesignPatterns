//
//  SiteAggregrateProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SiteAggregrateProtocol <NSObject>

-(NSInteger)getSiteArrCount;

-(id)getObjectWithIndex:(NSInteger)index;

-(void)insertSiteArrWithObject:(id)Obj;

@end
