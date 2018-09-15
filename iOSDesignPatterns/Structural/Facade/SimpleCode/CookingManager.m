//
//  CookingManager.m
//  iOSDesignPatterns
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "CookingManager.h"
#import "Tableware.h"
#import "Food.h"

@implementation CookingManager

- (void)cookChives
{
    NSLog(@"做荤菜~~~");
    [Tableware getPot];
    [Food getMeat];
}


- (void)cookVegetarianDish
{
    NSLog(@"做素菜~~~");
    [Tableware getTub];
    [Food getVegetables];
}

@end
