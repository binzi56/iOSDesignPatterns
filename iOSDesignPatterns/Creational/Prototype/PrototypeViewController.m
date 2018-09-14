//
//  PrototypeViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "PrototypeViewController.h"
#import "Person.h"

@interface PrototypeViewController ()

@end

@implementation PrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Jack
    Person *jack = [[Person alloc] initWithName:@"Jack"];
    [jack addBook:@"泰坦尼克号"];
    
    //Rose
    Person *rose = [jack copy];
    [rose addBook:@"七个小矮人"];
    
    NSLog(@"jack内存地址:%p\nrose内存地址:%p", jack, rose);
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
