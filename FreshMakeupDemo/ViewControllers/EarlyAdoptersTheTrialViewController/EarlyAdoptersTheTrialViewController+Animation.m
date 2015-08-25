//
//  EarlyAdoptersTheTrialViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewController+Animation.h"

@implementation EarlyAdoptersTheTrialViewController (Animation)

- (void)EarlyAdoptersTheTrialViewControllerShakeAshake {
    [self shakeAShakeAction];
}
- (void) shakeAShakeAction {
    self.shakeView = [[UIView alloc] initWithFrame:self.view.bounds];
    self.shakeView.backgroundColor = [UIColor blackColor];
    self.shakeView.alpha = 0.8;
    self.shakeImageView = [[UIImageView alloc] initWithFrame:(CGRectMake(1, 200, self.view.frame.size.width, 200))];
    self.shakeImageView.image = [UIImage imageNamed:@"shakeaShake.png"];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shakeImageAction)];
    self.shakeImageView.userInteractionEnabled = YES;
    
    [self.shakeImageView addGestureRecognizer:tap];
    
    [self.shakeView addSubview:self.shakeImageView];
    [self.view addSubview:self.shakeView];
}

- (void)shakeImageAction {
    self.shakeView.alpha = 0;
}
@end
