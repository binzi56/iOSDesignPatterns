//
//  CommandViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "CommandViewController.h"
#import "CommandReceiver.h"
#import "CommandInvoker.h"

@interface CommandViewController ()

@end

@implementation CommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CommandReceiver *receiver = [[CommandReceiver alloc] init];
    [receiver printCount];
    CommandInvoker *invoker = [[CommandInvoker alloc] init:receiver];
    [invoker increaseCount:@"10"];
    [receiver printCount];
    [invoker undo];
    [receiver printCount];
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
