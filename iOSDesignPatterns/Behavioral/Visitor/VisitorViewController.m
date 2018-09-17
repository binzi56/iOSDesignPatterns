//
//  VisitorViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "VisitorViewController.h"
#import "ItemB.h"
#import "ItemA.h"
#import "Visitor.h"
#import "ItemContainer.h"

@interface VisitorViewController ()

@end

@implementation VisitorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建集合
    ItemContainer *container = [[ItemContainer alloc] init];
    
    //给集合添加item
    [container addItem:[[ItemA alloc] init] withKey:@"ItemA"];
    [container addItem:[[ItemB alloc] init] withKey:@"ItemB"];

    //遍历出元素
    for (int i = 0; i < container.allKeys.count; i++) {
        NSString *key = container.allKeys[i];
        id<ItemProtocol> item = [container itemWithKey:key];
        
        //接收访问者
        Visitor *visitor = [[Visitor alloc] init];
        [item accept:visitor];
    }
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
