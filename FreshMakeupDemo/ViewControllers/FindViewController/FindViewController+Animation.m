//
//  findViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FindViewController+Animation.h"

@implementation FindViewController (Animation)
//滚动视图 动画
- (void)findThreeDimensional {
    if (self.num == 0) {
        [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewOne.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewTow.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewOne.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = self.num + 1;
        self.num = 1;
    } else if (self.num == 1) {
        [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewTow.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewThree.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewTow.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewThree.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = self.num + 1;
        self.num = 2;
    } else if (self.num == 2) {
        [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewThree.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewFour.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewThree.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewFour.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = self.num + 1;
        self.num = 3;
    } else {
        [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewFour.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewFour.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = 0;
        self.num = 0;
    }
}
@end
