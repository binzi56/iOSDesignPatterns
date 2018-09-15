//
//  MilkTea.h
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MilkTeaAdds.h"

@interface MilkTea : NSObject

@property (nonatomic, strong) MilkTeaAdds *adds;

- (void)makeCoffee;

@end
