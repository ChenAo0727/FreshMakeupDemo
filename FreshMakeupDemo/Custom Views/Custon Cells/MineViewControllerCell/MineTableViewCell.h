//
//  MineTableViewCell.h
//  FreshMakeupDemo
//
//  Created by Mac on 15/8/20.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MINE_TABLEVIEW_CELL @"MineTableViewCell"
@interface MineTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *mineLabel;
@property (strong, nonatomic) IBOutlet UIImageView *mineImage;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *textLabelLeftConstraint;

- (void)animateToShowLabel:(NSInteger)integer;
@end
