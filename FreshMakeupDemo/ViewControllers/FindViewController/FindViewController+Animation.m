//
//  findViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "FindViewController+Animation.h"

@implementation FindViewController (Animation)
- (void)findThreeDimensional {
    if (self.num == 0) {
        [self animationLeftView:self.imageViewOne viewTow:self.imageViewTow viewThree:self.imageViewFour];
        self.pageControl.currentPage = self.num + 1;
        self.num = 1;
    } else if (self.num == 1) {
        [self animationLeftView:self.imageViewTow viewTow:self.imageViewFour viewThree:self.imageViewOne];
        self.pageControl.currentPage = self.num + 1;
        self.num = 2;
    } else {
        [self animationLeftView:self.imageViewFour viewTow:self.imageViewOne viewThree:self.imageViewTow];
        self.pageControl.currentPage = 0;
        self.num = 0;
    }
}
- (void)findRightDimensional {
    if (self.num == 0) {
        [self animationReghtView:self.imageViewFour viewTow:self.imageViewOne viewThree:self.imageViewTow];
        self.pageControl.currentPage = 2;
        self.num = 2;
    } else if (self.num == 1) {
        [self animationReghtView:self.imageViewOne viewTow:self.imageViewTow viewThree:self.imageViewFour];
        self.pageControl.currentPage = 0;
        self.num = 0;
    } else {
        [self animationReghtView:self.imageViewTow viewTow:self.imageViewFour viewThree:self.imageViewOne];
        self.pageControl.currentPage = 1;
        self.num = 1;
    }
}
- (void)findLeftView:(UIView *)viewOne ViewTow:(UIView *)viewTow {
    viewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width - self.set / (-1), self.findAutomatiView.frame.size.height);
    viewTow.frame = CGRectMake(self.findAutomatiView.frame.size.width - self.set / (-1), 0, self.set / (-1), self.findAutomatiView.frame.size.height);
}
- (void)findRightView:(UIView *)viewOne ViewTow:(UIView *)viewTow {
    viewOne.frame = CGRectMake(0, 0, self.set, self.findAutomatiView.frame.size.height);
    viewTow.frame = CGRectMake( self.set, 0, self.findAutomatiView.frame.size.width - self.set, self.findAutomatiView.frame.size.height);
}
- (void)returnLeftAnimationView:(UIView *)viewOne ViewTow:(UIView *)viewTow {
    [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        viewOne.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
        viewTow.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
    } completion:nil];
}
- (void)returnRightAnimationView:(UIView *)viewOne ViewTow:(UIView *)viewTow {
    [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        viewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        viewTow.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
    } completion:nil];
}
- (void)animationLeftView:(UIView *)viewOne viewTow:(UIView *)viewTow  viewThree:(UIView *)viewThree {
    viewThree.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
    [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        viewOne.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
        viewTow.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
    } completion:^(BOOL finished) {
    }];
    
}
- (void)animationReghtView:(UIView *)viewOne viewTow:(UIView *)viewTow  viewThree:(UIView *)viewThree {
    [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        viewOne.frame = CGRectMake(0, 0,self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        viewTow.frame = CGRectMake(self.findAutomatiView.frame.size.width , 0, 0, self.findAutomatiView.frame.size.height);
    } completion:^(BOOL finished) {
       
    }];
     viewThree.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
}
@end
