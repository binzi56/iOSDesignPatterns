//
//  AlgorithmProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AlgorithmProtocol <NSObject>
//加密
-(NSString*)encrypt:(NSString*)data key:(NSString*)key iv:(NSData*)iv;
//解密
-(NSString*)decrypt:(NSString*)data key:(NSString*)key iv:(NSData*)iv;
@end
