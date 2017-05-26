//
//  BookFlipTransition.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/6/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "BookFlipTransition.h"
#import "OpenBookAnimtionView.h"
#import "UIImage+Utility.h"

@implementation BookFlipTransition {
    OpenBookAnimtionView *openBookAnimationView;
    CGPoint originCenter;
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.8;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toViewController.view.frame = transitionContext.containerView.bounds;
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    fromViewController.view.frame = transitionContext.containerView.bounds;
    CGRect frame = CGRectMake(0, 0, CGRectGetWidth(self.startFrame), CGRectGetHeight(self.startFrame));
    UIImageView *imageView;
    if (!self.isReverse) {
        imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithView:toViewController.view]];
    } else {
        imageView = [[UIImageView alloc] initWithImage:[UIImage imageWithView:fromViewController.view]];
    }
    [imageView setFrame:CGRectMake(0, 0, CGRectGetWidth(self.startFrame), CGRectGetHeight(self.startFrame) - 7)];
    UIView *view = [[UIView alloc] initWithFrame:frame];
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"realbook_background"]];
    backgroundView.frame = frame;
    [view addSubview:backgroundView];
    [view addSubview:imageView];
    
    openBookAnimationView = [[OpenBookAnimtionView alloc] initWithFrame:self.startFrame image:self.coverImage nextView:view];
    [self addBottomShadow];
    if ([self.delegate respondsToSelector:@selector(BookFlipTransitionWillStartOpenAnimation:)]) {
        [self.delegate BookFlipTransitionWillStartOpenAnimation:self];
    }
    [transitionContext.containerView addSubview:openBookAnimationView];
    
    if (!self.isReverse) {
        originCenter = openBookAnimationView.center;
        [transitionContext.containerView addSubview:toViewController.view];
        toViewController.view.layer.opacity = 0;
        [openBookAnimationView animateToOpenBookWithDuration:[self transitionDuration:transitionContext] completion:^(BOOL finished) {
            toViewController.view.layer.opacity = 1;
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
    } else {
        [fromViewController.view removeFromSuperview];
        [openBookAnimationView animateToCloseBookWithDuration:[self transitionDuration:transitionContext] originCenter:originCenter completion:^(BOOL finished) {
            if ([self.delegate respondsToSelector:@selector(BookFlipTransitiondidEndCloseAnimation:)]) {
                [self.delegate BookFlipTransitiondidEndCloseAnimation:self];
            }
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
    }
    
}

- (void)addBottomShadow {
    openBookAnimationView.layer.shadowColor = [UIColor blackColor].CGColor;
    openBookAnimationView.layer.shadowOffset = CGSizeMake(0,10);
    openBookAnimationView.layer.shadowOpacity = 0.3;
    openBookAnimationView.layer.shadowRadius = 10;
}



@end
