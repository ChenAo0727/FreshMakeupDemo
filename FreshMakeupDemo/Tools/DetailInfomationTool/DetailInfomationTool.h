//
//  DetailInfomationTool.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DetailInfomationTool : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) UIImage *coverImage;
@property (strong, nonatomic) NSString *shortComment;
@property (strong, nonatomic) NSArray *productionDescription;
@property (strong, nonatomic) NSArray *feeling;

- (instancetype)initWithElizabethArdenInfomation;//伊丽莎白雅顿
- (instancetype)initWithEsteeLauderInfomation;//雅诗兰黛
- (instancetype)initWithBobblBrownInfomation;//芭比布朗
- (instancetype)initWithCPBInfomation;//肌肤之钥
- (instancetype)initWithYSLInfomation;//美妆资讯整理
- (instancetype)initWithSisleyInfomation;//科莱丽
- (instancetype)initWithHelpClearSkinInfomation;//祛痘牛奶
- (instancetype)initWithYaDunInfomation;//雅顿
- (instancetype)initWithBareMineralsInformation;//矿物彩妆
- (instancetype)initWithClearSkin;//拉杜丽
- (instancetype)initWithSisley;//希思黎
- (instancetype)initWithSK;//SK-II
- (instancetype)initWithLanZhi;//兰芝
- (instancetype)initWithAupres;//欧珀莱

@end
