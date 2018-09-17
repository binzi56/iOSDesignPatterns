//
//  MediatorViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "MediatorViewController.h"
#import "AppleMediator.h"

@interface MediatorViewController ()

@end

@implementation MediatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //核心中介者
    AppleMediator *apple = [AppleMediator new];
    //同事
    BatteryColleague *battery = [[BatteryColleague alloc] initWithMediator:apple];
    CPUColleague *cpu = [[CPUColleague alloc] initWithMediator:apple];
    [apple setBattery:battery];
    [apple setCPU:cpu];
    
    [cpu load];
    
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
