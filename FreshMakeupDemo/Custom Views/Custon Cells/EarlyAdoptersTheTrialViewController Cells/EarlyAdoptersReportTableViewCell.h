//
//  EarlyAdoptersReportTableViewCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#define EARLY_ADOPTERS_REPORT_TABLEVIEW_CELL @"EarlyAdoptersReportTableViewCell"
@interface EarlyAdoptersReportTableViewCell : UITableViewCell
- (CGFloat)getCellHeight;
@property (weak, nonatomic) IBOutlet UIButton *earlyClickLeftButton;
@property (weak, nonatomic) IBOutlet UILabel *earlyClickLeftLabel;
@property (weak, nonatomic) IBOutlet UIButton *earlyClickRightButton;
@property (weak, nonatomic) IBOutlet UIView *earlyView;
@property (weak, nonatomic) IBOutlet UILabel *earlyClickRightLabel;
@property (weak, nonatomic) IBOutlet UIView *earlyMainView;
@property (weak, nonatomic) IBOutlet UIView *earlyLeftView;
@property (weak, nonatomic) IBOutlet UIView *earlyRightView;
@end
