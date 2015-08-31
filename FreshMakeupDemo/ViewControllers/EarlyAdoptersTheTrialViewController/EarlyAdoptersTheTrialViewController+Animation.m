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
    self.shakeAshakeView = [ShakeAshakeView create];
    self.shakeAshakeView.frame = self.view.bounds;
    [self.view addSubview:self.shakeAshakeView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shakeImageAction)];
    self.shakeAshakeView.userInteractionEnabled = YES;
    [self.shakeAshakeView addGestureRecognizer:tap];
    [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:YES];
    [self becomeFirstResponder];
}
- (void)shakeImageAction {
    self.shakeAshakeView.alpha = 0;
}
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    [self.shakeAshakeView shakeAshakeBefore];
}
- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    [self.shakeAshakeView shakeAshakeIn];
}
- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    [self.shakeAshakeView shakeAshakeAfter];
}
@end
