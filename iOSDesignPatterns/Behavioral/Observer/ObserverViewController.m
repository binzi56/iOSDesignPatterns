//
//  ObserverViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ObserverViewController.h"
#import "DeliciousFood.h"

static NSInteger count = 0;
@interface ObserverViewController ()

@property (nonatomic, strong) DeliciousFood *food;

@end

@implementation ObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.food = [DeliciousFood new];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(changeName) userInfo:nil repeats:YES];
    
    //kvo
    [_food addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew context:nil];
   
    //notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notifyChangeName:) name:@"NotificationChangeName" object:nil];
    
}

- (void)changeName
{
    count++;
    _food.name = [NSString stringWithFormat:@"帅斌_%ld", count];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationChangeName" object:_food.name];
}


- (void)notifyChangeName:(NSNotification *)notify{
    NSLog(@"notifyChangeName~~~%@", notify.object);
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

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"observeValueForKeyPath:\nnew:%@\nold:%@", change[@"new"], change[@"old"]);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
