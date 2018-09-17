//
//  IteratorViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "IteratorViewController.h"
#import "StudentTicketIterator.h"
#import "TicketIterator.h"
#import "SiteAggregrate.h"

@interface IteratorViewController ()

@end

@implementation IteratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1. NSEnumerator
    NSArray *array = @[@"Jack", @"Rose", @"Sam"];
    NSEnumerator *itemEnumerator = [array objectEnumerator];
    
    NSString *item;
    while (item = [itemEnumerator nextObject]) {
        NSLog(@"当前item:%@", item);
    }
    
    //2.块枚举
    NSString *sam = @"Sam";
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"enumerate item is :%@", obj);
        if ([obj localizedStandardCompare:sam] == NSOrderedSame) {
            *stop = YES;
            NSLog(@"停止遍历~~~");
        }
    }];
    
    
    //3.实例
    SiteAggregrate *site = [SiteAggregrate new];
    [site insertSiteArrWithObject:@"Jack"];
    [site insertSiteArrWithObject:@"Rose"];
    [site insertSiteArrWithObject:@"James"];
    [site insertSiteArrWithObject:@"Sam"];

    StudentTicketIterator *studentTicket = [[StudentTicketIterator alloc] initWithSiteAggregrate:site];
    while (![studentTicket hasNext]) {
        NSLog(@"currentObj:%@", [studentTicket getCurrentObj]);
        [studentTicket next];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
