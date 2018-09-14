//
//  WineProductProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/14.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WineProductProtocol <NSObject>

//配置材料
- (void)configurationMaterial;
//包装
- (void)addPackaging;

@end
