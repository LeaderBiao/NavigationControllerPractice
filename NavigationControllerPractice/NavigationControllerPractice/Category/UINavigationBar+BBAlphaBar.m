//
//  UINavigationBar+BBAlphaBar.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/26.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "UINavigationBar+BBAlphaBar.h"

static char *AlphaV;
@implementation UINavigationBar (BBAlphaBar)
-(void)setAlphaView:(UIView *)AlphaView{
    objc_setAssociatedObject(self, &AlphaV, AlphaView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)AlphaView
{
    return  objc_getAssociatedObject(self, &AlphaV);
}

- (void)changeNavAlphaWithColor:(UIColor *)color
{
    if(!self.AlphaView)
    {
        //设置图片
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        //创建aplhaView
        self.AlphaView = [[UIView alloc]initWithFrame:CGRectMake(0, -20, ScreenW, 64)];
        //插入到NvaBar的上面
        [self insertSubview:self.AlphaView atIndex:0];
    }
    [self.AlphaView setBackgroundColor:color];
}

@end
