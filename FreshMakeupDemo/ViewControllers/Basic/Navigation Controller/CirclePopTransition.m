//
//  CirclePopTransition.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/6/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "CirclePopTransition.h"
#import "HomeViewController.h"
#import "FindViewController.h"

@interface CirclePopTransition()
@property(nonatomic,strong)id<UIViewControllerContextTransitioning>transitionContext;
@end

@implementation CirclePopTransition

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.7f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    self.transitionContext = transitionContext;
    FindViewController *fromVC = (FindViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    HomeViewController *toVC   = (HomeViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    UIView *buttonImage = toVC.rightIconImageView;
    [containerView addSubview:toVC.view];
    [containerView addSubview:fromVC.view];
    UIBezierPath *finalPath = [UIBezierPath bezierPathWithOvalInRect:buttonImage.frame];
    CGPoint finalPoint;
    if(buttonImage.frame.origin.x > (toVC.view.bounds.size.width / 2)) {
        if (buttonImage.frame.origin.y < (toVC.view.bounds.size.height / 2)) {
            finalPoint = CGPointMake(buttonImage.center.x - 0, buttonImage.center.y - CGRectGetMaxY(toVC.view.bounds)+30);
        } else {
            finalPoint = CGPointMake(buttonImage.center.x - 0, buttonImage.center.y - 0);
        }
    }else{
        if (buttonImage.frame.origin.y < (toVC.view.bounds.size.height / 2)) {
            finalPoint = CGPointMake(buttonImage.center.x - CGRectGetMaxX(toVC.view.bounds), buttonImage.center.y - CGRectGetMaxY(toVC.view.bounds)+30);
        } else {
            finalPoint = CGPointMake(buttonImage.center.x - CGRectGetMaxX(toVC.view.bounds), buttonImage.center.y - 0);
        }
    }
    CGFloat radius = sqrt(finalPoint.x * finalPoint.x + finalPoint.y * finalPoint.y);
    UIBezierPath *startPath = [UIBezierPath bezierPathWithOvalInRect:CGRectInset(buttonImage.frame, -radius, -radius)];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.path = finalPath.CGPath;
    fromVC.view.layer.mask = maskLayer;
    CABasicAnimation *pingAnimation = [CABasicAnimation animationWithKeyPath:@"path"];
    pingAnimation.fromValue = (__bridge id)(startPath.CGPath);
    pingAnimation.toValue   = (__bridge id)(finalPath.CGPath);
    pingAnimation.duration = [self transitionDuration:transitionContext];
    pingAnimation.timingFunction = [CAMediaTimingFunction  functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pingAnimation.delegate = self;
    [maskLayer addAnimation:pingAnimation forKey:@"pingInvert"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [self.transitionContext completeTransition:![self.transitionContext transitionWasCancelled]];
    [self.transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey].view.layer.mask = nil;
    [self.transitionContext viewControllerForKey:UITransitionContextToViewControllerKey].view.layer.mask = nil;
}
@end





