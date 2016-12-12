//
//  BBViewController.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBViewController.h"
#import "BBRandColorCell.h"
#import "BBNavHiddenController.h"
#import "BBAlphaViewController.h"
#import "BBCellCopyController.h"
#import "BBImageScaleController.h"
#import "BBScrollController.h"


@interface BBViewController ()
@property (nonatomic,strong)NSArray *dataSource;
@property (nonatomic,weak)UITableViewCell *randCell;
@end

@implementation BBViewController

- (NSArray *)dataSource
{
    if(!_dataSource)
    {
        _dataSource = [NSArray new];
    }
    return _dataSource;
}

- (void)setupUI
{
    self.dataSource = @[@{@"name":@"导航栏隐藏与显示"},@{@"name":@"导航栏透明渐变"},@{@"name":@"图片下拉放大"},@{@"name":@"Cell的复制粘贴"},@{@"name":@"无限滚动(手动和定时)"}];
    UITableView *table = [[UITableView alloc]initWithFrame:self.view.bounds];
    table.dataSource = self;
    table.delegate = self;
    self.table = table;
    [self.view addSubview:table];
    self.navigationItem.leftBarButtonItem = nil;
    [self.navigationController.navigationBar setShadowImage:nil];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BBRandColorCell *cell = [BBRandColorCell cellWithTableView:tableView];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSDictionary *dict = self.dataSource[indexPath.row];
    cell.textLabel.text = dict[@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
        {
            BBNavHiddenController *navVC = [BBNavHiddenController new];
            navVC.title = self.dataSource[indexPath.row][@"name"];
            [self.navigationController pushViewController:navVC animated:YES];
        }
            break;
        case 1:
        {
            BBAlphaViewController *alphaVC = [BBAlphaViewController new];
            alphaVC.titleName = self.dataSource[indexPath.row][@"name"];
            UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:alphaVC];
            [self presentViewController:nav animated:YES completion:nil];

        }
            break;
        case 2:
        {
            BBImageScaleController *imageScale = [BBImageScaleController new];
            imageScale.title = self.dataSource[indexPath.row][@"name"];
            [self.navigationController pushViewController:imageScale animated:YES];
        }
            break;
        case 3:
        {
            BBCellCopyController *cellCopy = [[BBCellCopyController  alloc]init];
            cellCopy.title = self.dataSource[indexPath.row][@"name"];
            [self.navigationController pushViewController:cellCopy animated:YES];
        }
            break;
        case 4:
        {
            BBScrollController  *scrollVC = [BBScrollController new];
            scrollVC.title = self.dataSource[indexPath.row][@"name"];
            [self.navigationController pushViewController:scrollVC animated:YES];
        }
            break;
        default:
            break;
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    BBRandColorCell *cell = [BBRandColorCell new];
    [cell removeTimer];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
