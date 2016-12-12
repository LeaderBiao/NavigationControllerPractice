//
//  BBScrollCell.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBScrollCell.h"
#import "BBScrollModel.h"

@interface BBScrollCell ()
@property (nonatomic,weak)UIImageView *iconView;
@property (nonatomic,weak)UILabel *nameLablel;
@end

@implementation BBScrollCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self createSubViews];
    }
    return self;
}

#pragma mark ----- 设置Cell中的控件
- (void)createSubViews
{
    UIImageView *iconView = [UIImageView new];
    iconView.contentMode = UIViewContentModeScaleAspectFit;
    self.iconView = iconView;
    [self.contentView addSubview:iconView];
    
    UILabel *nameLabel = [UILabel new];
    nameLabel.textAlignment = NSTextAlignmentCenter;
    nameLabel.textColor = [UIColor magentaColor];
    self.nameLablel = nameLabel;
    nameLabel.font = [UIFont boldSystemFontOfSize:30];
    [self.iconView addSubview:nameLabel];
}

#pragma mark ----- 设置控件的frame
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.iconView.frame = CGRectMake(0, 0, self.width, self.height);
    self.nameLablel.frame = CGRectMake(0, 200, self.width, 40);
}

#pragma  mark ---- 设置数据
- (void)setModel:(BBScrollModel *)model
{
    _model = model;
    self.iconView.image = [UIImage imageNamed:model.icon];
    self.nameLablel.text = NSString(@"%@",model.name);
}

@end
