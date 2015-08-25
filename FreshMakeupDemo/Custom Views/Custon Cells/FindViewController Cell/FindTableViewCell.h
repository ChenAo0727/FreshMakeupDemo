//
//  FoundTableViewCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define FIND_TABLEVIEW_CELL @"FindTableViewCell"
@interface FindTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *findImageView;

@property (strong, nonatomic) IBOutlet UIImageView *findHeadImageView;
@property (strong, nonatomic) IBOutlet UIImageView *findSubtitleImageView;
@property (strong, nonatomic) IBOutlet UILabel *findLabel;
@property (strong, nonatomic) IBOutlet UILabel *findAdvertLabel;

@end
