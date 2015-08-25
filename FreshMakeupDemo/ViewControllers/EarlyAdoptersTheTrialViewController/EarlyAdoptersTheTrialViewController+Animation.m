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
    
    [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:YES];
    [self becomeFirstResponder];
}

- (void)shakeImageAction {
    self.shakeView.alpha = 0;
}
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.shakeImageView.frame = CGRectMake(self.view.frame.size.width / 2 - 40, 280, 80, 50);
        self.shakeInteger = (arc4random() % 2) + 1;
    } completion:nil];
}
- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.shakeImageView.image = [UIImage imageNamed:@"shakeaShake.png"];
        self.shakeImageView.frame = CGRectMake(0, 200, self.view.frame.size.width, 200);
    } completion:nil];
}
- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (self.shakeInteger == 2) {
        self.shakeImageView.image = [UIImage imageNamed:@"last.png"];
    } else {
        self.shakeImageView.image = [UIImage imageNamed:@"underthe.png"];
    }
    if (event.subtype == UIEventSubtypeMotionShake) {
        self.view.backgroundColor = [UIColor redColor];
        [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.shakeImageView.frame = CGRectMake(0, 200, self.view.frame.size.width, 200);
        } completion:nil];
    }
}
@end
