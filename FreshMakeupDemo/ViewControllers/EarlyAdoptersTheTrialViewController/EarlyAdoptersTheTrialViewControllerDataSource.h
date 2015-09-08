//
//  EarlyAdoptersTheTrialViewControllerDataSource.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FreshTryInformationTool.h"
@protocol EarlyAdoptersTheTrialViewControllerDataSourceDelegate <NSObject>
- (void)EarlyAdoptersTheTrialViewControllerShakeAshake;
- (void)EarlyViewControllerStrengthGame;
@end

@interface EarlyAdoptersTheTrialViewControllerDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, weak) id<EarlyAdoptersTheTrialViewControllerDataSourceDelegate>delegate;
@property (strong, nonatomic)FreshTryInformationTool *freshTryInformationTool;
@end
