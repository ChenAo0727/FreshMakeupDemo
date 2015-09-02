//
//  TextCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define TEXT_CELL @"TextCell"

@protocol TextDelegate;
@interface TextCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *textCellLabel;
@property (weak, nonatomic) id<TextDelegate> delegate;
- (CGFloat)heightOfCell;
@end
