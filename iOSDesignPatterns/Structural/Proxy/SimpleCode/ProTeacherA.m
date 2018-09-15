
//
//  ProTeacherA.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "ProTeacherA.h"
#import "ProTeacher.h"

@interface ProTeacherA()

@property (nonatomic, strong) ProTeacher *teacher;

@end
@implementation ProTeacherA

- (instancetype)init
{
    self = [super init];
    if (self) {
        _teacher = [ProTeacher new];
    }
    return self;
}

- (void)haveAClass
{
    [_teacher haveAClass];
}

- (void)getOutOfClass
{
    [_teacher getOutOfClass];
}

@end
