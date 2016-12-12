//
//  BBScrollModel.m
//  NavigationControllerPractice
//
//  Created by BiaoGe on 2016/11/28.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BBScrollModel.h"

@implementation BBScrollModel

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if(self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

+ (NSArray *)arrWithContents
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"models.plist" ofType:nil];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *mutable = [NSMutableArray array];
    
    [array enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL * _Nonnull stop) {
        BBScrollModel *model = [BBScrollModel modelWithDict:dict];
        [mutable addObject:model];
    }];
    return mutable.copy;
    
}


@end
