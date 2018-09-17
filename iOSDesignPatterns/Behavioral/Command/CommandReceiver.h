//
//  CommandReceiver.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommandReceiver : NSObject
{
    NSInteger _count;
}

//被服务的对象
@property (nonatomic,weak)UITextField *clientField;

//增加
- (void)increase:(NSString*)value;
//减少
- (void)reduce:(NSString*)value;

-(void)printCount;

@end
