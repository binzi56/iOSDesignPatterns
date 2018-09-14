//
//  AbstractFactoryViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "AbstractFactoryViewController.h"
#import "AppleFactory.h"
#import "HuaweiFactory.h"

@interface AbstractFactoryViewController ()
{
    BOOL flag;
}

@end

@implementation AbstractFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *switchButton = ({
        UIButton *tempButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.view addSubview:tempButton];
        [tempButton setTitle:@"点我切换手机工厂" forState:UIControlStateNormal];
        [tempButton addTarget:self action:@selector(switchButtonAction) forControlEvents:UIControlEventTouchUpInside];
        tempButton.titleLabel.font = [UIFont systemFontOfSize:14];
        tempButton.backgroundColor = [UIColor brownColor];
        tempButton;
    });
    
    switchButton.frame = CGRectMake(50, 200, 250, 50);
    
   
    
    
    
    
    
    
}

- (void)initFactoryWithName:(NSString *)name
{
    Class class = NSClassFromString(name);
    id<PhoneFactoryProtocol> factory = [class new];
    id<PhoneProtocol> phone = [factory getPhoneWithFrame:self.view.bounds];
    id<BatteryProtocol> battery = [factory getBattery];
    
    NSLog(@"当前手机名称:%@\n手机参数:%@", [phone getPhoneName], [battery getParames]);
    
}

- (void)switchButtonAction
{
    NSString *className;
    if (flag) {
        className = @"AppleFactory";
    }else{
        className = @"HuaweiFactory";
    }
    [self initFactoryWithName:className];
    flag = !flag;
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
