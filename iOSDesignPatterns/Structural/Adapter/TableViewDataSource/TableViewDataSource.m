//
//  TableViewDataSource.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "TableViewDataSource.h"

@implementation TableViewDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.dataArray addObject:@{@"name": @"Jack", @"country": @"USA"}];
        [self.dataArray addObject:@{@"name": @"Rose", @"country": @"UK"}];
        [self.dataArray addObject:@{@"name": @"FireJade", @"country": @"China"}];
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [super numberOfSectionsInTableView:tableView];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    NSDictionary *dic = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = dic[@"name"];
    cell.detailTextLabel.text = dic[@"country"];
    return cell;
}

@end
