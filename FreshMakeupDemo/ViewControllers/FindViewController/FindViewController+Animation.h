//
//  FoundViewController+Animation.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "FindViewController.h"

@interface FindViewController (Animation)
- (void)findThreeDimensional;
- (void)findRightDimensional;
- (void)findLeftView:(UIView *)viewOne ViewTow:(UIView *)viewTow;
- (void)findRightView:(UIView *)viewOne ViewTow:(UIView *)viewTow;
- (void)returnLeftAnimationView:(UIView *)viewOne ViewTow:(UIView *)viewTow;
- (void)returnRightAnimationView:(UIView *)viewOne ViewTow:(UIView *)viewTow;
@end
