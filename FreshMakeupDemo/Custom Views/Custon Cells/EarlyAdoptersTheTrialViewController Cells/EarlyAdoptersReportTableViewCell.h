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
@property (strong, nonatomic) IBOutlet UIButton *earlyClickLeftButton;
@property (strong, nonatomic) IBOutlet UILabel *earlyClickLeftLabel;
@property (strong, nonatomic) IBOutlet UIButton *earlyClickRightButton;
@property (strong, nonatomic) IBOutlet UIView *earlyView;
@property (strong, nonatomic) IBOutlet UILabel *earlyClickRightLabel;
@end
