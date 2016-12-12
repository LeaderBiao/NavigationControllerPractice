//
//  UINavigationBar+BBAlphaBar.h
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/26.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (BBAlphaBar)
/** 分类的作用 可以添加属性 添加方法*/
@property (nonatomic,strong)UIView *AlphaView;
/** 提供一个渐变透明的方法*/
- (void)changeNavAlphaWithColor:(UIColor *)color;

@end
