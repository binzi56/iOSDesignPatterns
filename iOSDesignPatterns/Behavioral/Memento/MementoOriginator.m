//
//  MementoOriginator.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "MementoOriginator.h"

@interface MementoOriginator()

@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) MementoStore *memento;

@end
@implementation MementoOriginator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dataArray = [NSMutableArray new];
    }
    return self;
}


- (void)insertContent:(MementoRole *)role
{
    [_dataArray addObject:role];
}

- (MementoStore *)store
{
   return [[MementoStore alloc] initWithArray:[_dataArray copy]];
}


- (void)echo {
    for (MementoRole *role in _dataArray) {
        NSLog(@"MementoOriginator:\nname:%@", role.name);
    }
}

- (void)restore:(MementoStore *)memento {
    _dataArray = [[NSMutableArray alloc] initWithArray:memento.dataArr];
}

- (MementoStore *)memento {
    if (!_memento) {
        _memento = [[MementoStore alloc] initWithArray:[_dataArray copy]];
    }
    return _memento;
}


@end
