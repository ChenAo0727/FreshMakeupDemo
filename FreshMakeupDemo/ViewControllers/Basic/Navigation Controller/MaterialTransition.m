//
//  MaterialTransition.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/27/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "MaterialTransition.h"
#import "UIImage+Utility.h"
#import "UIScreen+Utility.h"
@implementation MaterialTransition
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    CGRect startFrame = [transitionContext.containerView.superview convertRect:self.startFrame toView:transitionContext.containerView];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toViewController.view.frame = transitionContext.containerView.bounds;
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    fromViewController.view.frame = transitionContext.containerView.bounds;
    UIImageView *imageView = [self generateImageWithToViewController:toViewController fromViewController:fromViewController containerFrame:startFrame];
    UIView *animatedViewForTransition = [self generateViewWithStartFrame:startFrame];
    [animatedViewForTransition addSubview:imageView];
    [transitionContext.containerView addSubview:animatedViewForTransition];
    if (!self.isReverse) {
        toViewController.view.layer.opacity = 0;
        [transitionContext.containerView addSubview:toViewController.view];
        [self animationForPresent:transitionContext animatedViewForTransition:animatedViewForTransition imageView:imageView toViewController:toViewController];
    } else {
        [fromViewController.view removeFromSuperview];
        [self animationForDismiss:transitionContext animatedViewForTransition:animatedViewForTransition imageView:imageView startFrame:startFrame];
    }
}

- (void)animationForPresent:(id<UIViewControllerContextTransitioning>)transitionContext animatedViewForTransition:(UIView *)animatedViewForTransition imageView:(UIImageView *)imageView toViewController:(UIViewController *)toViewController {
    [UIView transitionWithView:animatedViewForTransition duration:[self transitionDuration:transitionContext] options:0 animations:^{
        animatedViewForTransition.frame = [self getfinalFrame];
        CGRect frame = CGRectMake(([self getfinalFrame].size.width / 2 - imageView.image.size.width), [self getfinalFrame].size.width / 2, imageView.image.size.width, imageView.image.size.height);
        imageView.frame = frame;
        animatedViewForTransition.layer.cornerRadius = [self getfinalFrame].size.width / 2;
    } completion:^(BOOL finished) {
        [animatedViewForTransition removeFromSuperview];
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        toViewController.view.layer.opacity = 1;
    }];
}

- (void)animationForDismiss:(id<UIViewControllerContextTransitioning>)transitionContext animatedViewForTransition:(UIView *)animatedViewForTransition imageView:(UIImageView *)imageView startFrame:(CGRect)startFrame {
    [UIView transitionWithView:animatedViewForTransition duration:[self transitionDuration:transitionContext] options:0 animations:^{
        animatedViewForTransition.frame = startFrame;
        CGRect frame = CGRectMake((startFrame.size.width / 2 - imageView.image.size.width), startFrame.size.width / 2, imageView.image.size.width, imageView.image.size.height);
        imageView.frame = frame;
    } completion:^(BOOL finished) {
        [animatedViewForTransition removeFromSuperview];
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
}

- (UIImageView *)generateImageWithToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController containerFrame:(CGRect)containerFrame {
    UIImage *image;
    CGRect frame;
    if (!self.isReverse) {
        image = [UIImage imageWithView:toViewController.view size:toViewController.view.frame.size];
        frame = CGRectMake((containerFrame.size.width / 2 - image.size.width), containerFrame.size.width / 2, image.size.width, image.size.height);
    } else {
        image = [UIImage imageWithView:fromViewController.view size:fromViewController.view.frame.size];
        frame = CGRectMake(([self getfinalFrame].size.width / 2 - image.size.width), [self getfinalFrame].size.width / 2, image.size.width, image.size.height);
    }
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = frame;
    return imageView;
}

- (UIView *)generateViewWithStartFrame:(CGRect)startFrame {
    if (!self.isReverse) {
        return [self generateViewIfNotReverseWithStartFrame:startFrame];
    } else {
        return [self generateViewIfReverse];;
    }
}

- (UIView *)generateViewIfNotReverseWithStartFrame:(CGRect)startFrame {
    UIView *animatedViewForTransition = [[UIView alloc] initWithFrame:startFrame];
    animatedViewForTransition.layer.cornerRadius = animatedViewForTransition.frame.size.width / 2;
    animatedViewForTransition.clipsToBounds = YES;
    return animatedViewForTransition;
}

- (UIView *)generateViewIfReverse {
    UIView *animatedViewForTransition = [[UIView alloc] initWithFrame:[self getfinalFrame]];
    animatedViewForTransition.layer.cornerRadius = [self getfinalFrame].size.width / 2;
    animatedViewForTransition.clipsToBounds = YES;
    return animatedViewForTransition;
}

- (CGRect)getfinalFrame {
    CGFloat radius = sqrt([UIScreen screenWidth] * [UIScreen screenWidth] + [UIScreen screenHeight] * [UIScreen screenHeight]);
    CGRect finalFrame = CGRectMake([UIScreen screenWidth] - radius, -radius, radius * 2, radius * 2);
    return finalFrame;
}

@end
