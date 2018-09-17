//
//  CommandReceiver.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/17.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "CommandReceiver.h"

@implementation CommandReceiver

- (void)setClientField:(UITextField *)clientField{
    _clientField = clientField;
    _clientField.text = [NSString stringWithFormat:@"%ld",_count];
}

- (void)increase:(NSString*)value{
    NSInteger count = [value integerValue];
    _count+=count;
    _count = MAX(0, _count);
    _clientField.text = [NSString stringWithFormat:@"%ld",_count];
}

- (void)reduce:(NSString*)value{
    NSInteger count = [value integerValue];
    if (_count>0) {
        _count-=count;
        _count = MIN(100, _count);
    }else{
        _count = 0;
    }
    _clientField.text = [NSString stringWithFormat:@"%ld",_count];
}

-(void)printCount{
    NSLog(@"当前商品数量：%ld", (long)_count);
}

@end
