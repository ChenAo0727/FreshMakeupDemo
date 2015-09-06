//
//  OpenBookAnimtionView.m
//  BookOpenDemo
//
//  Created by guoshencheng on 9/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "OpenBookAnimtionView.h"

@implementation OpenBookAnimtionView

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image nextView:(UIView *)view {
    if (self = [super initWithFrame:frame]) {
        self.contentView = view;
        self.contentView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame));
        self.contentView.backgroundColor = [UIColor yellowColor];
        [self addSubview:self.contentView];
        self.coverImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame))];
        self.coverImageView.image = image;
        [self addSubview:self.coverImageView];
        self.isOpen = YES;
    }
    return self;
}

- (void)animateToOpenBook {
    CATransform3D transformblank = CATransform3DMakeRotation(- M_PI / 2, 0.0, 1.0, 0.0);
    transformblank.m34 = 1.0f / 250.0f;
    self.coverImageView.layer.anchorPoint = CGPointMake(0, 0.5);
    self.coverImageView.center = CGPointMake(0, self.coverImageView.frame.size.height / 2);
    //self.coverImageView.opaque = YES;
    CGFloat scaleX = [UIScreen mainScreen].bounds.size.width / self.bounds.size.width;
    CGFloat scaleY = [UIScreen mainScreen].bounds.size.height / self.bounds.size.height;
    [UIView animateWithDuration:2.5 animations:^{
        self.coverImageView.layer.transform = transformblank;
        self.transform = CGAffineTransformMakeScale(scaleX,scaleY);
        self.center = self.superview.center;
    } completion:^(BOOL finished) {
        self.isOpen = YES;
        [self removeFromSuperview];
    }];
}

- (void)animateToCloseBook {
    self.coverImageView.layer.anchorPoint = CGPointMake(0, 0.5);
    self.coverImageView.center = CGPointMake(0, self.coverImageView.frame.size.height / 2);
    CGFloat scaleX = [UIScreen mainScreen].bounds.size.width / self.bounds.size.width;
    CGFloat scaleY = [UIScreen mainScreen].bounds.size.height / self.bounds.size.height;
    CATransform3D transformblank = CATransform3DMakeRotation(- M_PI / 2, 0.0, 1.0, 0.0);
    
    transformblank.m34 = 1.0f / 250.0f;
    self.coverImageView.layer.transform = transformblank;
    self.transform = CGAffineTransformMakeScale(scaleX,scaleY);
    self.center = self.superview.center;
    [UIView animateWithDuration:2.5 animations:^{
        self.coverImageView.layer.transform = CATransform3DIdentity;
        self.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        self.isOpen = NO;
        [self removeFromSuperview];
    }];
}

@end
