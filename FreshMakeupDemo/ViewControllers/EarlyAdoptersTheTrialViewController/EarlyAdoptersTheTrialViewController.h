//
//  EarlyAdoptersTheTrialViewController.h
//  FreshMakeupDemo
//
//  注释
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//
#import <UIKit/UIKit.h>

#import "EarlyAdoptersTheTrialViewControllerDataSource.h"
#import "FreshTryInformationTool.h"
#import "BaseViewController.h"
#import "ZoomFadeTransition.h"
#import "ShakeAshakeView.h"

// 注释
@interface EarlyAdoptersTheTrialViewController : BaseViewController<UITableViewDelegate,EarlyAdoptersTheTrialViewControllerDataSourceDelegate,UIViewControllerTransitioningDelegate>
@property (strong, nonatomic) IBOutlet UILabel *earlyAdoptersTheTrialTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *earlyAdoptersTheTrialLeftInconImage;
@property (strong, nonatomic) IBOutlet UIImageView *earlyAdoptersTheTrialRightInconImageView;
@property (strong, nonatomic) IBOutlet UITableView *earlyAdoptersTableView;
@property (strong, nonatomic) IBOutlet UIImageView *earlyAdoptersTheTrialRightTestInconImageView;
@property (strong, nonatomic) EarlyAdoptersTheTrialViewControllerDataSource *earlyAdoptersTheTrialViewControllerDataSource;
@property (strong, nonatomic) ShakeAshakeView *shakeAshakeView;
@property (strong, nonatomic) ZoomFadeTransition *zoomFadeTransition;   // 注释

// 注释
- (void)updateDatasourceWithFreshTryTool:(FreshTryInformationTool *)freshTryInformationTool;
@end
