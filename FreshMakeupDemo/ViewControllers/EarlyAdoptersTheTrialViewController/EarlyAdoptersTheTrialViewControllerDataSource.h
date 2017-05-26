//
//  EarlyAdoptersTheTrialViewControllerDataSource.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FreshTryInformationTool.h"
// 首字母  小写       把自己 传出去
@protocol EarlyAdoptersTheTrialViewControllerDataSourceDelegate <NSObject>
- (void)EarlyAdoptersTheTrialViewControllerShakeAshake;
- (void)EarlyViewControllerStrengthGame;
@end

@interface EarlyAdoptersTheTrialViewControllerDataSource : NSObject<UITableViewDataSource>
@property (weak, nonatomic) id<EarlyAdoptersTheTrialViewControllerDataSourceDelegate>delegate;
@property (strong, nonatomic)FreshTryInformationTool *freshTryInformationTool;
@end
