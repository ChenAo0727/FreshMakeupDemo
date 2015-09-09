//
//  DetailInfomationTool.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeelingInformationTool.h"
#import "CommentInfomationTool.h"
@interface DetailInfomationTool : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *fitCrowd;
@property (strong, nonatomic) NSString *specification;
@property (strong, nonatomic) NSString *origin;
@property (strong, nonatomic) NSString *price;
@property (strong, nonatomic) NSString *titleImage;
@property (strong, nonatomic) UIImage *coverImage;
@property (strong, nonatomic) NSString *shortComment;
@property (strong, nonatomic) NSArray *productionDescription;
@property (strong, nonatomic) NSArray *feeling;
@property (strong, nonatomic) NSArray *comments;
@property (strong, nonatomic) FeelingInformationTool *feelingInfomationTool;
- (instancetype)initWithElizabethArdenInfomation;//伊丽莎白雅顿 ----
- (instancetype)initWithEsteeLauderInfomation;//雅诗兰黛  ----
- (instancetype)initWithBobblBrownInfomation;//芭比布朗  ----
- (instancetype)initWithCPBInfomation;//肌肤之钥   ----
- (instancetype)initWithYSLInfomation;//美妆资讯整理 --- 
- (instancetype)initWithSisleyInfomation;//科莱丽  ----
- (instancetype)initWithHelpClearSkinInfomation;//祛痘牛奶
- (instancetype)initWithBareMineralsInformation;//矿物彩妆  睡眠粉 ----
- (instancetype)initWithLaduree;//拉杜丽  ----
- (instancetype)initWithSisley;//希思黎
- (instancetype)initWithSK;//SK-II  ----
- (instancetype)initWithLanZhi;//兰芝   ----
- (instancetype)initWithAupres;//欧珀莱  ----

@end
