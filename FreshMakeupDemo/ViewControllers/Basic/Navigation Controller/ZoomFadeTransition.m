//
//  ZoomFadeTransition.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/7/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ZoomFadeTransition.h"
#import "UIImage+Utility.h"

@implementation ZoomFadeTransition

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toViewController.view.frame = transitionContext.containerView.bounds;
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    fromViewController.view.frame = transitionContext.containerView.bounds;
    UIView *animationView = [self generateImageWithFromViewController:fromViewController toViewController:toViewController];
    animationView.frame = transitionContext.containerView.bounds;
    [transitionContext.containerView addSubview:animationView];
    if (!self.isReverse) {
        toViewController.view.layer.opacity = 0;
        [transitionContext.containerView addSubview:toViewController.view];
        CGAffineTransform transform = animationView.transform;
        animationView.transform = CGAffineTransformScale(transform, 1.5, 1.5);
        animationView.alpha = 0;
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            animationView.alpha = 1;
            animationView.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            [animationView removeFromSuperview];
            toViewController.view.layer.opacity = 1;
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
    } else {
        [fromViewController.view removeFromSuperview];
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            CGAffineTransform transform = animationView.transform;
            animationView.transform = CGAffineTransformScale(transform, 1.5, 1.5);
            animationView.alpha = 0;
        } completion:^(BOOL finished) {
            [animationView removeFromSuperview];
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
    }
    
}

- (UIView *)generateImageWithFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController {
    UIImage *image;
    if (!self.isReverse) {
        image = [UIImage imageWithView:toViewController.view];
    } else {
        image = [UIImage imageWithView:fromViewController.view];
    }
    return [[UIImageView alloc] initWithImage:image];
}

@end
