//
//  FeelingInformationTool.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeelingInformationTool : NSObject
@property (strong, nonatomic) NSArray *feelIngArray;
- (instancetype) initLadureeInfomation;//拉杜丽
- (instancetype)initWithHelpClearSkinInfomation;//help
- (instancetype)initWithElizabethArdenInfomation;//雅顿
- (instancetype)initWithEsteeLauderInfomation;//雅诗兰黛
- (instancetype)initWithSKInformation;
- (instancetype)initWithSisleyInformation;
- (instancetype)initWithBobblBrownInfomation;//芭比布朗
- (instancetype)initWithBareMineralsInformation;//睡眠粉

@end
