//
//  EarlyAdoptersTheTrialViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EarlyAdoptersTheTrialViewControllerDataSource.h"
#import "BaseViewController.h"
@interface EarlyAdoptersTheTrialViewController : BaseViewController<UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *earlyAdoptersTheTrialTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *earlyAdoptersTheTrialLeftInconImage;
@property (strong, nonatomic) IBOutlet UIImageView *earlyAdoptersTheTrialRightInconImageView;
@property (strong, nonatomic) IBOutlet UITableView *earlyAdoptersTableView;
@property (strong, nonatomic) EarlyAdoptersTheTrialViewControllerDataSource *earlyAdoptersTheTrialViewControllerDataSource;
@end
