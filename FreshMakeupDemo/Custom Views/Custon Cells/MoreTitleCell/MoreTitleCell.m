//
//  MoreTitleCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/5.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "MoreTitleCell.h"
#import "UIColor+Utility.h"
@implementation MoreTitleCell

- (void)animateZoomOutMoreTitleViewWithCompletion:(void (^)(BOOL finished))completion {
    CGAffineTransform transform = self.moreTitleView.transform;
    [UIView animateWithDuration:0.4 animations:^{
        self.moreTitleView.transform = CGAffineTransformScale(transform, 2.0, 2.0);
        self.moreTitleView.alpha = 0;
    } completion:^(BOOL finished) {
        self.moreTitleView.transform = CGAffineTransformIdentity;
        self.moreTitleView.alpha = 1;
        completion(finished);
    }];
}

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor whiteColor];
    self.moreTitleView.layer.borderColor = [[UIColor colorWithIntRed:186 green:186 blue:186] CGColor];
    self.moreTitleView.layer.borderWidth = 0.5;
}

@end
