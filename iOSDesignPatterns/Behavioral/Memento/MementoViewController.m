//
//  MementoViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "MementoViewController.h"
#import "MementoRole.h"
#import "MementoOriginator.h"

@interface MementoViewController ()

@end

@implementation MementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MementoOriginator *originator = [[MementoOriginator alloc] init];
    [originator insertContent:[[MementoRole alloc] initWithName:@"Jack" age:23]];
    [originator insertContent:[[MementoRole alloc] initWithName:@"Rose" age:24]];
    [originator insertContent:[[MementoRole alloc] initWithName:@"Sams" age:46]];
    [originator insertContent:[[MementoRole alloc] initWithName:@"Jade" age:45]];

    MementoStore *store = [originator store];
    
    [originator insertContent:[[MementoRole alloc] initWithName:@"Fire" age:28]];
    [originator echo];
    
    //重新存储
    [originator restore:store];
    [originator echo];
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
