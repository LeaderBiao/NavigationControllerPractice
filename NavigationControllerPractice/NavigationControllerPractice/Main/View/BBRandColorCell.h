//
//  BBRandColorCellCell.h
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BBRandColorCell : UITableViewCell
@property (nonatomic,strong)NSTimer *timer;
/** 移除定时器*/
- (void)removeTimer;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
