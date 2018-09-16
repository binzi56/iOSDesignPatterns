//
//  ComputerProtocol.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/16.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ComputerProtocol <NSObject>

- (void)showComputerInfoWithComputerName:(NSString *)computerName;

@end
