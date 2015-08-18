//
//  FoundViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FoundViewController+Animation.h"

@implementation FoundViewController (Animation)
- (void)foundThreeDimensionalRollAnimation {
    [self foundThreeDimensional];
}
- (void)buttonClicked:(UIButton *)button {
    [self foundThreeDimensional];
}
- (void)foundThreeDimensional {
    CATransition *animation = [CATransition animation];
    animation.duration = 1.0;
    animation.type = @"cube";
    animation.subtype = kCATransitionFromRight;
    //找到最上层的View
    UIButton *lastView = (UIButton *)[self.threeDimensionalView.subviews lastObject];
    if (lastView.tag==101)
        [self.threeDimensionalView bringSubviewToFront:self.threeDimensionalTow];
    else if (lastView.tag==102)
        [self.threeDimensionalView bringSubviewToFront:self.threeDimensionalThree];
    else if (lastView.tag==103)
        [self.threeDimensionalView bringSubviewToFront:self.threeDimensionalFour];
    else if (lastView.tag==104)
        [self.threeDimensionalView bringSubviewToFront:self.threeDimensionalOne];
    [self.threeDimensionalView.layer addAnimation:animation forKey:@"animation"];
}
@end
