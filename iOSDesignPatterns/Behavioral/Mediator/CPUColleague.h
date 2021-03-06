//
//  CPUColleague.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "PhoneColleague.h"

@interface CPUColleague : PhoneColleague

- (instancetype)initWithMediator:(PhoneMediator *)mediator;

- (void)getMemoryCache;

- (void)load;

@end
