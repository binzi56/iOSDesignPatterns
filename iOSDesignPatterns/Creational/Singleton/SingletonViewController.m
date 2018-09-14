//
//  SingletonViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "SingletonViewController.h"
#import "Person.h"

@interface SingletonViewController ()

@end

@implementation SingletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //这里打印一下单例的内存地址
    Person *per1 = [Person sharedInstance];
    Person *per2 = [[Person alloc] init];
    Person *per3 = [per2 copy];
    
    
    //看看是否是同一块内存
    NSLog(@"per1~~~sharedInstance~~~%p", per1);
    NSLog(@"per2~~~alloc init~~~%p", per2);
    NSLog(@"per3~~~copy~~~%p", per3);

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
