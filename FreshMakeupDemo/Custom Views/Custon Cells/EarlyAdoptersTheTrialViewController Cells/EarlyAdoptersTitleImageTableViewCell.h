//
//  EarlyAdoptersTitleImageTableViewCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define  EARLY_ADOPTERS_TITLEIMAGE_TABLEVIEW_CELL @"EarlyAdoptersTitleImageTableViewCell"

@interface EarlyAdoptersTitleImageTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *titleImageView;
@property (strong, nonatomic) IBOutlet UIButton *titleImageButton;
@property (strong, nonatomic) IBOutlet UIImageView *titleImageMinImageView;
@property (strong, nonatomic) IBOutlet UIView *titltView;

@property (strong, nonatomic) IBOutlet UILabel *titleImageViewTitltLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleImageViewTime;
@property (strong, nonatomic) IBOutlet UILabel *titltImageViewTimerLabel;
- (void)startTimer;

@end
