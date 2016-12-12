//
//  BBNavHiddenController.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBNavHiddenController.h"

@interface BBNavHiddenController ()

@end

@implementation BBNavHiddenController

- (void)setupUI
{
    UITableView *table = [[UITableView alloc]initWithFrame:self.view.bounds];
    table.dataSource = self;
    table.delegate = self;
    self.table = table;
    [self.view addSubview:table];
}

/** 隐藏的方法设置*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat offsetY = scrollView.contentOffset.y;
    
    if(offsetY > 100)
    {
        [self.navigationController setNavigationBarHidden:YES animated:YES];
    }
    else
    {
        [self.navigationController setNavigationBarHidden:NO animated:NO];
    }
}

@end
