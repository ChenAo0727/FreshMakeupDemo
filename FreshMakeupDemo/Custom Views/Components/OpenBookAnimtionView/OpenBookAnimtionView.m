//
//  OpenBookAnimtionView.m
//  BookOpenDemo
//
//  Created by chenao on 9/6/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "OpenBookAnimtionView.h"

@implementation OpenBookAnimtionView

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image nextView:(UIView *)view {
    if (self = [super initWithFrame:frame]) {
        self.contentView = view;
        self.contentView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame));
        [self addSubview:self.contentView];
        self.coverImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame))];
        self.coverImageView.image = image;
        [self addSubview:self.coverImageView];
        self.isOpen = YES;
    }
    return self;
}

- (void)animateToOpenBookWithDuration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion {
    CATransform3D transformblank = CATransform3DMakeRotation(- M_PI / 2, 0.0, 1.0, 0.0);
    transformblank.m34 = 1.0f / 1000.0f;
    self.coverImageView.layer.anchorPoint = CGPointMake(0, 0.5);
    self.coverImageView.center = CGPointMake(0, self.coverImageView.frame.size.height / 2);
    //self.coverImageView.opaque = YES;
    CGFloat scaleX = [UIScreen mainScreen].bounds.size.width / self.bounds.size.width;
    CGFloat scaleY = [UIScreen mainScreen].bounds.size.height / (self.bounds.size.height - 7);
    [UIView animateWithDuration:duration animations:^{
        self.coverImageView.layer.transform = transformblank;
        self.transform = CGAffineTransformMakeScale(scaleX,scaleY);
        //CGFloat superCenterY = self.superview.center.y;
        CGFloat centerY = (self.superview.center.y + 7 * scaleY / 2);
        self.center = CGPointMake(self.superview.center.x, centerY);
    } completion:^(BOOL finished) {
        self.isOpen = YES;
        [self removeFromSuperview];
        completion(finished);
    }];
}

- (void)animateToCloseBookWithDuration:(NSTimeInterval)duration originCenter:(CGPoint)originCenter completion:(void (^)(BOOL finished))completion {
    self.coverImageView.layer.anchorPoint = CGPointMake(0, 0.5);
    self.coverImageView.center = CGPointMake(0, self.coverImageView.frame.size.height / 2);
    CGFloat scaleX = [UIScreen mainScreen].bounds.size.width / self.bounds.size.width;
    CGFloat scaleY = [UIScreen mainScreen].bounds.size.height / (self.bounds.size.height - 7);
    CATransform3D transformblank = CATransform3DMakeRotation(- M_PI / 2, 0.0, 1.0, 0.0);
    transformblank.m34 = 1.0f / 250.0f;
    self.coverImageView.layer.transform = transformblank;
    self.transform = CGAffineTransformMakeScale(scaleX,scaleY);
    CGFloat centerY = (self.superview.center.y + 7 * scaleY / 2);
    self.center = CGPointMake(self.superview.center.x, centerY);
    [UIView animateWithDuration:duration animations:^{
        self.transform = CGAffineTransformIdentity;
        self.coverImageView.layer.transform = CATransform3DIdentity;
        self.center = originCenter;
    } completion:^(BOOL finished) {
        self.isOpen = NO;
        [self removeFromSuperview];
        completion(finished);
    }];
}

@end
