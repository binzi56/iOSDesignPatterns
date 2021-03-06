//
//  ChainOfResponsibilityViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ChainOfResponsibilityViewController.h"
#import "JackChain.h"
#import "RoseChain.h"

@interface ChainOfResponsibilityViewController ()

@end

@implementation ChainOfResponsibilityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    JackChain *jack = [JackChain new];
    RoseChain *rose = [RoseChain new];
    jack.nextHandle = rose;
    
    [jack handlerThingWithName:@"Rose"];
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
