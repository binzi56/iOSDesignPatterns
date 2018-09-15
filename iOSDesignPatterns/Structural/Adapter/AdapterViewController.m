//
//  AdapterViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AdapterViewController.h"
#import "Adapter.h"
#import "TableViewDataSource.h"

@interface AdapterViewController ()

@property (nonatomic, strong) UITableView *table;
@property (nonatomic, strong) TableViewDataSource *dataSource;

@end

@implementation AdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //simpleCode
    Adapter *adapter = [[Adapter alloc] init];
    NSLog(@"获取到的所有信息为:%@", [adapter getAllMessage]);
    
    //tableView
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_table];
    
    self.dataSource = [TableViewDataSource new];
    self.table.delegate = _dataSource;
    self.table.dataSource = _dataSource;
    
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
