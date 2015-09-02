//
//  WorthSlideView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "WorthSlideView.h"

@implementation WorthSlideView {
    CGFloat lastCarViewConstraint;
}

+ (instancetype)create {
    WorthSlideView *worthSlideView = [[[NSBundle mainBundle] loadNibNamed:@"WorthSlideView" owner:nil options:nil] lastObject];
    worthSlideView.translatesAutoresizingMaskIntoConstraints = NO;
    return worthSlideView;
}

- (void)awakeFromNib {
    self.processView.layer.cornerRadius = self.processView.frame.size.height / 2;
    [self updateCarToDefaultPostion];
    [self configureSlideMotion];
}

- (void)configureSlideMotion {
    self.slideMotion = [SlideMotion new];
    self.slideMotion.direction = SlideMotionDirectionHorizontal;
    self.slideMotion.delegate = self;
    self.slideMotion.dataSource = self;
    [self.slideMotion attachToView:self.carView];
}

- (void)updateCarToDefaultPostion {
    self.carViewRightConstraint.constant = self.processView.frame.size.width - self.leftProcessViewWithConstraint.constant;
    [self layoutIfNeeded];
}

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self;
}

- (void)slideMotion:(SlideMotion *)slideMotion didBeginSlideView:(UIView *)view {
    lastCarViewConstraint = self.carViewRightConstraint.constant;
}

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    if (lastCarViewConstraint - offset < 0) {
        self.carViewRightConstraint.constant = 0;
    } else if (self.processView.frame.size.width - self.carView.frame.size.width < lastCarViewConstraint - offset) {
        self.carViewRightConstraint.constant = self.processView.frame.size.width - self.carView.frame.size.width;
    } else {
        self.carViewRightConstraint.constant = lastCarViewConstraint - offset;
    }
    [self layoutIfNeeded];
}

- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    [UIView animateWithDuration:0.2 animations:^{
        [self updateCarToDefaultPostion];
    } completion:^(BOOL finished) {
        
    }];
}

@end
