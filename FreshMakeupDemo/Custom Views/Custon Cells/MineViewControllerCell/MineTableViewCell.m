//
//  MineTableViewCell.m
//  FreshMakeupDemo
//
//  Created by Mac on 15/8/20.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "MineTableViewCell.h"

@implementation MineTableViewCell

- (void)awakeFromNib {
    // Initialization code
   
}

- (void)animateToShowLabel:(NSInteger)integer {
    self.textLabelLeftConstraint.constant = 320;
    self.mineLabel.alpha = 0;
    [self layoutIfNeeded];
    [UIView animateKeyframesWithDuration:0.2 delay:integer *0.04 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.textLabelLeftConstraint.constant = 15;
        self.mineLabel.alpha = 1;
        [self layoutIfNeeded];
    } completion:nil];
}

@end
