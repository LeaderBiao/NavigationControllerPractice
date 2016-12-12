//
//  BBRootsViewController.h
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/26.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BBRootsViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,weak)UITableView *table;
- (void)setupUI;
@end
