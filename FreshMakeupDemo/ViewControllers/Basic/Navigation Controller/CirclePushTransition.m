//
//  CirclePushTransition.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "CirclePushTransition.h"
#import "HomeViewController.h"
#import "FindViewController.h"


@interface CirclePushTransition ()
@property (nonatomic,strong)id<UIViewControllerContextTransitioning> transitionContext;

@end

@implementation CirclePushTransition

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext{
    return  0.7f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    self.transitionContext = transitionContext;
    HomeViewController * fromVC = (HomeViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    FindViewController *toVC = (FindViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *contView = [transitionContext containerView];
    UIView *buttonImage = fromVC.rightIconImageView;
    UIBezierPath *maskStartBP =  [UIBezierPath bezierPathWithOvalInRect:buttonImage.frame];
    [contView addSubview:fromVC.view];
    [contView addSubview:toVC.view];
    //创建两个圆形的 UIBezierPath 实例；一个是 button 的 size ，另外一个则拥有足够覆盖屏幕的半径。最终的动画则是在这两个贝塞尔路径之间进行的
    CGPoint finalPoint;
    //判断触发点在那个象限
    if(buttonImage.frame.origin.x > (toVC.view.bounds.size.width / 2)) {
        if (buttonImage.frame.origin.y < (toVC.view.bounds.size.height / 2)) {
            //第一象限
            finalPoint = CGPointMake(buttonImage.center.x - 0, buttonImage.center.y - CGRectGetMaxY(toVC.view.bounds)+30);
        } else {
            //第四象限
            finalPoint = CGPointMake(buttonImage.center.x - 0, buttonImage.center.y - 0);
        }
    } else {
        if (buttonImage.frame.origin.y < (toVC.view.bounds.size.height / 2)) {
            //第二象限
            finalPoint = CGPointMake(buttonImage.center.x - CGRectGetMaxX(toVC.view.bounds), buttonImage.center.y - CGRectGetMaxY(toVC.view.bounds)+30);
        } else {
            //第三象限
            finalPoint = CGPointMake(buttonImage.center.x - CGRectGetMaxX(toVC.view.bounds), buttonImage.center.y - 0);
        }
    }
    CGFloat radius = sqrt((finalPoint.x * finalPoint.x) + (finalPoint.y * finalPoint.y));
    UIBezierPath *maskFinalBP = [UIBezierPath bezierPathWithOvalInRect:CGRectInset(buttonImage.frame, -radius, -radius)];
    //创建一个 CAShapeLayer 来负责展示圆形遮盖
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.path = maskFinalBP.CGPath; //将它的 path 指定为最终的 path 来避免在动画完成后会回弹
    toVC.view.layer.mask = maskLayer;
    CABasicAnimation *maskLayerAnimation = [CABasicAnimation animationWithKeyPath:@"path"];
    maskLayerAnimation.fromValue = (__bridge id)(maskStartBP.CGPath);
    maskLayerAnimation.toValue = (__bridge id)((maskFinalBP.CGPath));
    maskLayerAnimation.duration = [self transitionDuration:transitionContext];
    maskLayerAnimation.timingFunction = [CAMediaTimingFunction  functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    maskLayerAnimation.delegate = self;
    [maskLayer addAnimation:maskLayerAnimation forKey:@"path"];
}

#pragma mark - CABasicAnimation的Delegate
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    //告诉 iOS 这个 transition 完成
    [self.transitionContext completeTransition:![self. transitionContext transitionWasCancelled]];
    //清除 fromVC 的 mask
    [self.transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey].view.layer.mask = nil;
    [self.transitionContext viewControllerForKey:UITransitionContextToViewControllerKey].view.layer.mask = nil;
}



@end




