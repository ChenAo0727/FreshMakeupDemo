//
//  FoundTableViewCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define FOUND_TABLEVIEW_CELL @"FoundTableViewCell"
@interface FoundTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *foundImageView;
@property (strong, nonatomic) IBOutlet UIImageView *foundHeadImageView;
@property (strong, nonatomic) IBOutlet UILabel *foundLabel;

@end
