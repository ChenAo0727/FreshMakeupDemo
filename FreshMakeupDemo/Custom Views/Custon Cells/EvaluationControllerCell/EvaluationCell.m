//
//  EvaluationCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/5.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EvaluationCell.h"

@implementation EvaluationCell

- (void)awakeFromNib {
    // Initialization code
    self.worthSlideView = [WorthSlideView create];
    [self.contentView addSubview:self.worthSlideView];
    [self.worthSlideView setBottomSpace:103];
    [self.worthSlideView setLeftSpace:0];
    [self.worthSlideView setRightSpace:0];
    [self.worthSlideView setHeightConstant:45];
}

@end
