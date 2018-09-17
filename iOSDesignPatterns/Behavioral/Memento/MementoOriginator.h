//
//  MementoOriginator.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoStore.h"
#import "MementoRole.h"

@interface MementoOriginator : NSObject

- (void)insertContent:(MementoRole *)role;

- (MementoStore *)store;

- (void)echo;

- (void)restore:(MementoStore *)memento;

@end
