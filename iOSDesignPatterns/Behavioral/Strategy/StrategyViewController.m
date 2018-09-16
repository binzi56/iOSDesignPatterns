//
//  StrategyViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "StrategyViewController.h"
#import "AlgorithmProtocol.h"
#import "RSAEncryption.h"

@interface StrategyViewController ()

@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    id<AlgorithmProtocol> encrype = [[RSAEncryption alloc] init];
    [encrype encrypt:@"A" key:@"3J42J42J23KF34G" iv:nil];
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
