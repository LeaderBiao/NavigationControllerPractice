//
//  BBRootsViewController.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/26.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBRootsViewController.h"


@interface BBRootsViewController ()

@end

@implementation BBRootsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backVC)];
    self.navigationItem.backBarButtonItem = back;
    
    [self setupUI];
}

- (void)setupUI
{
    NSLog(@"哈哈哈........");
}

- (void)backVC
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
//        cell.backgroundColor = [UIColor randomColor];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第 %@ 行数据",@(indexPath.row).description];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
