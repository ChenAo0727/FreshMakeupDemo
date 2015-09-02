//
//  TitleHeadCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define TITLE_HEAD_CELL @"TitleHeadCell"
@interface TitleHeadCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleHeadLabel;
- (void)updateWithLabel:(NSString *)label;
@end
