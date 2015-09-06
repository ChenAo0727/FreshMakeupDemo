//
//  BookFlipTransition.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BookFlipTransitionDelegate;
@interface BookFlipTransition : NSObject <UIViewControllerAnimatedTransitioning>

@property (getter=isReverse) BOOL reverse;
@property (strong, nonatomic) UIImage *coverImage;
@property (assign, nonatomic) CGRect startFrame;
@property (strong, nonatomic) UIImageView *contentView;
@property (weak, nonatomic) id<BookFlipTransitionDelegate> delegate;

@end

@protocol BookFlipTransitionDelegate <NSObject>
@optional
- (void)BookFlipTransitionWillStartOpenAnimation:(BookFlipTransition *)bookFlipTransition;
- (void)BookFlipTransitiondidEndCloseAnimation:(BookFlipTransition *)bookFlipTransition;

@end