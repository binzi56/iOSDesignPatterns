//
//  ItemProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VisitorProtocol;
@protocol ItemProtocol <NSObject>


//接收访问者
- (void)accept:(id <VisitorProtocol>)visitor;

//item公共的操作
- (void)operation;


@end
