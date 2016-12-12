//
//  UIColor+Tools.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/26.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "UIColor+Tools.h"

@implementation UIColor (Tools)
+ (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    return [self colorWithRed:r green:g blue:b alpha:1.0];
}
@end
