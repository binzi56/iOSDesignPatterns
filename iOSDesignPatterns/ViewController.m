//
//  ViewController.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/13.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView * _mainTableView;
    NSArray     * _dataArr;
}

@end

@implementation ViewController


#pragma mark - tableView delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *tempDic = _dataArr[indexPath.section];
    NSArray *valueArr = tempDic[@"value"];
    NSArray *classArr = tempDic[@"class"];
    
    NSString *className = classArr[indexPath.row];
    
    UIViewController *subViewController = [[NSClassFromString(className) alloc] init];
    subViewController.title = valueArr[indexPath.row];
    
    [self.navigationController pushViewController:subViewController animated:YES];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSDictionary *tempDic = _dataArr[section];
    return tempDic[@"title"];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}


#pragma mark - tableView DataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [_dataArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSDictionary *tempDic = _dataArr[section];
    NSArray *valueArr = tempDic[@"value"];
    return valueArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *mainCellIdentifier = @"com.huozhiyu.mainCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:mainCellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:mainCellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.detailTextLabel.lineBreakMode = NSLineBreakByCharWrapping;
        cell.detailTextLabel.numberOfLines = 0;
    }
    
    NSDictionary *tempDic = _dataArr[indexPath.section];
    NSArray *valueArr = tempDic[@"value"];
    NSArray *classArr = tempDic[@"class"];
    cell.textLabel.text = valueArr[indexPath.row];
    cell.detailTextLabel.text = classArr[indexPath.row];
    
    return cell;
}

#pragma mark - init
- (void)initData
{
    //主页面数据
    _dataArr = @[@{@"title":@"创建型模式(Creational) | 5",
                  @"value": @[@"工厂方法模式(Factory Method)",
                              @"抽象工厂模式(Abstract Factory)",
                              @"单例模式(Singleton)",
                              @"建造者模式(Builder)",
                              @"原型模式(Prototype)"],
                  @"class": @[@"FactoryMethodViewController",
                              @"AbstractFactoryViewController",
                              @"SingletonViewController",
                              @"BuilderViewController",
                              @"PrototypeViewController"]},
                @{@"title":@"结构型模式(Structural) | 7",
                  @"value": @[@"适配器模式(Adapter)",
                              @"装饰模式(Decrator)",
                              @"代理模式(Proxy)",
                              @"外观模式(Facade)",
                              @"桥接模式(Bridge)",
                              @"组合模式(Composite)",
                              @"享元模式(Flyweight)"
                              ],
                  @"class": @[@"AdapterViewController",
                              @"DecratorViewController",
                              @"ProxyViewController",
                              @"FacadeViewController",
                              @"BridgeViewController",
                              @"CompositeViewController",
                              @"FlyweightViewController"
                              ]},
                @{@"title":@"行为型模式(Behavioral) | 11",
                  @"value": @[@"策略模式(Strategy)",
                              @"模板方法模式(Template Method)",
                              @"观察者模式(Observer)",
                              @"迭代器模式(Iterator)",
                              @"责任链模式(Chain of responsibility)",
                              @"命令模式(Command)",
                              @"备忘录模式(Memento)",
                              @"状态模式(State)",
                              @"访问者模式(Visitor)",
                              @"中介者模式(Mediator)",
                              @"解释器模式(Interpreter)"
                              ],
                  @"class": @[@"StrategyViewController",
                              @"TemplateMethodViewController",
                              @"ObserverViewController",
                              @"IteratorViewController",
                              @"ChainOfResponsibilityViewController",
                              @"CommandViewController",
                              @"MementoViewController",
                              @"StateViewController",
                              @"VisitorViewController",
                              @"MediatorViewController",
                              @"InterpreterViewController"
                              ]}
                ];
}

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"iOS设计模式实践";
    
    [self initData];
    
    _mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _mainTableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    _mainTableView.sectionHeaderHeight = 10;
    _mainTableView.sectionFooterHeight = 0;
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    
    [self.view addSubview:_mainTableView];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.translucent = NO;
    
    [self.navigationController setToolbarHidden:YES animated:animated];
}

@end
