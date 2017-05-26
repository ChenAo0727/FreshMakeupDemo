//
//  OpenBookAnimtionView.h
//  BookOpenDemo
//
//  Created by chenao on 9/6/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface OpenBookAnimtionView : UIView

@property (strong, nonatomic) UIImageView *coverImageView;
@property (strong, nonatomic) UIView *contentView;
@property (assign, nonatomic) BOOL isOpen;

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image nextView:(UIView *)view;
- (void)animateToOpenBookWithDuration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)animateToCloseBookWithDuration:(NSTimeInterval)duration originCenter:(CGPoint)originCenter completion:(void (^)(BOOL finished))completion;
@end