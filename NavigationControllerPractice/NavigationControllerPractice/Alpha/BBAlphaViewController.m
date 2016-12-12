//
//  BBAlphaViewController.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBAlphaViewController.h"

@interface BBAlphaViewController ()
@property (nonatomic,weak)UILabel *label;
@property (nonatomic,weak)UIButton *back;
@end

@implementation BBAlphaViewController

- (void)setupUI
{
    UITableView *table = [[UITableView alloc]initWithFrame:CGRectMake(0, -64, ScreenW, self.view.height + 64)];
    table.dataSource = self;
    table.delegate = self;
    [self.view addSubview:table];
    self.table = table;
    
    [self setupCurrentTitleAndBackWithOther];
    
    //去除当前控制器导航栏底部的黑线
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
}

- (void)setupCurrentTitleAndBackWithOther
{

    // 头部图片
    UIImageView *headerView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, 250)];
    headerView.image = [UIImage imageNamed:@"4.jpg"];
    headerView.contentMode = UIViewContentModeScaleToFill;
    self.table.tableHeaderView = headerView;
    
    // 返回按钮
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];;
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backVC) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backItem;
    self.back = backBtn;
    
    // 标题
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 44)];
    titleLabel.text = self.titleName;
    titleLabel.font = [UIFont boldSystemFontOfSize:18];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = titleLabel;
    self.label = titleLabel;
}

- (void)backVC
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma  mark ---- 设置透明方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat offsetY = scrollView.contentOffset.y;
    UIColor *color = [UIColor blueColor];
    if (offsetY > 64)
    {
        if (offsetY > 128)
        {
            offsetY = 128;
        }
        CGFloat alpha = (offsetY - 64)/64;
        [self.navigationController.navigationBar changeNavAlphaWithColor:[color colorWithAlphaComponent:alpha]];
        self.back.titleLabel.alpha = alpha;
        self.navigationItem.titleView.alpha = alpha;
    }
    else
    {
        [self.navigationController.navigationBar changeNavAlphaWithColor:[color colorWithAlphaComponent:0.0]];
        self.back.titleLabel.alpha = 0.0;
        self.navigationItem.titleView.alpha = 0.0;
    }
}


@end
