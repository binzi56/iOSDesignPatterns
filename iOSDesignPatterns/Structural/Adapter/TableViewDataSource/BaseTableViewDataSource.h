//
//  BaseTableViewDataSource.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewDataSource : NSObject
<
UITableViewDelegate,
UITableViewDataSource
>

@property(nonatomic, strong) NSMutableArray* dataArray;

@end
