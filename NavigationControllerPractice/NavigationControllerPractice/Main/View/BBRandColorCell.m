//
//  BBRandColorCellCell.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBRandColorCell.h"

@implementation BBRandColorCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"Cell";
    BBRandColorCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(!cell)
    {
        cell = [[BBRandColorCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self cellTextLabelWithColor];
        [self addTimer];
    }
    return self;
}

- (void)cellTextLabelWithColor
{
    self.textLabel.textColor = [UIColor randomColor];
    self.textLabel.font = [UIFont boldSystemFontOfSize:20];
    self.textLabel.layer.shadowColor = [UIColor randomColor].CGColor;
    self.textLabel.layer.shadowOffset = CGSizeMake(0, -5);
    self.textLabel.layer.shadowRadius = 0;
    self.textLabel.layer.shadowOpacity = 0.5;
}

/** 添加定时器*/
- (void)addTimer
{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(cellTextLabelWithColor) userInfo:nil repeats:YES];
    
    //如果用户在主线程做其他操作的话,定时器就不会执行,将其加到这里可以让用户在执行其他操作的时候,分出一些时间给定时器
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
}

/** 移除定时器*/
- (void)removeTimer
{
    [self.timer invalidate];
    self.timer = nil;
}
@end
