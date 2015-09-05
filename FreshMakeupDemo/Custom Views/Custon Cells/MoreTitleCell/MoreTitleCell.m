//
//  MoreTitleCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/5.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "MoreTitleCell.h"
#import "UIColor+Utility.h"
@implementation MoreTitleCell

- (void)awakeFromNib {
    // Initialization code
    self.moreTitleView.layer.borderColor = [[UIColor colorWithIntRed:186 green:186 blue:186] CGColor];
    self.moreTitleView.layer.borderWidth = 0.5;
}

@end
