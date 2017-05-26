//
//  DetailViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/24/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "DetailViewController+Animation.h"

@implementation DetailViewController (Animation)

- (void)animateToShoWSectionView {
    self.selectionView.hidden = NO;
    [UIView animateWithDuration:0.2 animations:^{
        self.selectionView.alpha = 1;
    }];
}

- (void)animateToHideSectionView {
    [UIView animateWithDuration:0.2 animations:^{
        self.selectionView.alpha = 0;
    } completion:^(BOOL finished) {
        self.selectionView.hidden = YES;
    }];
}

@end
