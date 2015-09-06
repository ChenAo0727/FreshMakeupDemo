//
//  HomeViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+Animation.h"
#import "UINavigationController+CustomNavigationController.h"
#import "DetailViewController.h"

@implementation HomeViewController (Animation)

- (void)recoverAllComponent {
    [UIView animateWithDuration:0.2 animations:^{
        self.updateTimeLabel.alpha = 1;
        self.updateTimeImageView.alpha = 1;
        //self.downGuideImageView.alpha = 1;
    } completion:^(BOOL finished) {
        //[self.downGuideImageView startAnimating];
    }];
}

- (void)animateUpdateTitle:(NSString *)text {
    [UIView animateWithDuration:0.2 animations:^{
        self.titleLabel.alpha = 0;
    } completion:^(BOOL finished) {
        self.titleLabel.text = text;
        [UIView animateWithDuration:0.2 animations:^{
            self.titleLabel.alpha = 1;
        }];
    }];
}

@end
