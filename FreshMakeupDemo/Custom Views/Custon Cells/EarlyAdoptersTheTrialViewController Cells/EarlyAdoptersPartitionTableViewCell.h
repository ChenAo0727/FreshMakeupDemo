//
//  EarlyAdoptersPartitionTableViewCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define EARLY_ADOPTERS_PARTITION_TABLEVIEW_CELL @"EarlyAdoptersPartitionTableViewCell"
@interface EarlyAdoptersPartitionTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIButton *moreButton;

@property (strong, nonatomic) IBOutlet UIView *earlyPartition;

@property (strong, nonatomic) IBOutlet UIView *earlyPartitionTow;

@end
