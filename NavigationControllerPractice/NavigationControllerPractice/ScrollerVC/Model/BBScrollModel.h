//
//  BBScrollModel.h
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BBScrollModel : NSObject
@property (nonatomic,copy)NSString *icon;
@property (nonatomic,copy)NSString *name;
- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)modelWithDict:(NSDictionary *)dict;
+ (NSArray *)arrWithContents;
@end
