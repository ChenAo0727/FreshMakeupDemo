//
//  FlipTransition.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/28/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "FlipTransition.h"
#import "Masonry.h"
#import "RealBookView.h"
#import "UIScreen+Utility.h"
#import "UIImage+Utility.h"

@implementation FlipTransition {
    RealBookView *realBookView;
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toViewController.view.frame = transitionContext.containerView.bounds;
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    fromViewController.view.frame = transitionContext.containerView.bounds;
    
    UIImage *nextViewControllerImage = [self generateImageWithToViewController:toViewController fromViewController:fromViewController];
    UIView *animatedViewForTransition = [self generateViewWithImage:nextViewControllerImage];
    [transitionContext.containerView addSubview:animatedViewForTransition];
    if (!self.isReverse) {
        toViewController.view.layer.opacity = 0;
        [transitionContext.containerView addSubview:toViewController.view];
        [realBookView animationToOpenBookWithCompletion:^(BOOL finished) {
            [animatedViewForTransition removeFromSuperview];
            toViewController.view.layer.opacity = 1;
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
    } else {
        [fromViewController.view removeFromSuperview];
        [realBookView animationToCloseBookWithCompletion:^(BOOL finished) {
            [animatedViewForTransition removeFromSuperview];
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
    }
}

- (UIImage *)generateImageWithToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController {
    UIImage *image;
    if (!self.isReverse) {
        image = [UIImage imageWithView:toViewController.view size:toViewController.view.frame.size];
    } else {
        image = [UIImage imageWithView:fromViewController.view size:fromViewController.view.frame.size];
    }
    return image;
}

- (UIView *)generateViewWithImage:(UIImage *)image {
    UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor = [UIColor clearColor];
    realBookView = [RealBookView create];
    realBookView.nextViewControllerImageView.image = image;
    [view addSubview:realBookView];
    [realBookView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.top.equalTo(@(88));
        make.bottom.equalTo(@(-60));
        make.width.equalTo(realBookView.mas_height).multipliedBy(0.6);
    }];
    [realBookView layoutIfNeeded];
    if (self.isReverse) {
        realBookView.coverContainerView.layer.anchorPoint = CGPointMake(0, 0.5);
        [realBookView updateToOpenBookStatus];
    }
    return view;
}

@end
