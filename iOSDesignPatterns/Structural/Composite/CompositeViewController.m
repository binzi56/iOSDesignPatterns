//
//  CompositeViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "CompositeViewController.h"
#import "JackDB.h"

@interface CompositeViewController ()

@end

@implementation CompositeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    JackDB *jack = [[JackDB alloc] initWithHumanDBName:@"Jack"];
    [jack addDBData:[[JackDB alloc] initWithHumanDBName:@"James"]];
    [jack addDBData:[[JackDB alloc] initWithHumanDBName:@"Same"]];
    [jack addDBData:[[JackDB alloc] initWithHumanDBName:@"Rose"]];

    [jack removeDBData:[[JackDB alloc] initWithHumanDBName:@"Rose"]];
    
    [jack searchAllDBData];
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
