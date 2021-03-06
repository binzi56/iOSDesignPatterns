//
//  BuilderViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "BuilderViewController.h"
#import "SellWine.h"
#import "Whisky.h"
#import "Brandy.h"

@interface BuilderViewController ()

@end

@implementation BuilderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Whisky *whisky = [Whisky new];
    Brandy *brandy = [Brandy new];
    SellWine *sell = [SellWine new];
    sell.delegate = whisky;
    [sell sellPrepare];
    
    sell.delegate = brandy;
    [sell sellPrepare];
    
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
