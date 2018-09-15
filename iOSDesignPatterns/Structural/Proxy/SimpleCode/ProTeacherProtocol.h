//
//  ProTeacherProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProTeacherProtocol <NSObject>

//上课
- (void)haveAClass;

//下课
- (void)getOutOfClass;


@end
