//
//  XHZoomDrawerView.m
//  XHDrawerController
//
//  Created by chenao on 14-12-27.
//  Copyright (c) chenao. All rights reserved.
//

#import "XHZoomDrawerView.h"
#import "XHDrawerControllerHeader.h"
#import "UIColor+Utility.h"
@implementation XHZoomDrawerView

#pragma mark - UIView Overrides
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {        
        _scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        self.scrollView.scrollsToTop = NO;
        self.scrollView.bounces = NO;
        self.scrollView.scrollEnabled = YES;
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.showsVerticalScrollIndicator = NO;
        self.scrollView.backgroundColor = [UIColor colorFromHexCode:@"#78bab7"];
        self.scrollView.contentSize = CGSizeMake((CGRectGetWidth(frame) + XHContentContainerViewOriginX), CGRectGetHeight(frame));
        _leftContainerView = [[UIView alloc] initWithFrame:self.bounds];
        _contentContainerView = [[UIView alloc] initWithFrame:self.bounds];
        xh_UIViewSetFrameOriginX(self.contentContainerView, XHContentContainerViewOriginX);
        self.contentContainerView.layer.shadowOffset = CGSizeMake(0, 0);
        self.contentContainerView.layer.shadowOpacity = 0.8;
        self.contentContainerView.layer.shadowColor = [UIColor grayColor].CGColor;
        _contentContainerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.contentContainerButton.frame = self.contentContainerView.bounds;
        [self.contentContainerView addSubview:self.contentContainerButton];
        [self.scrollView setContentOffset:CGPointMake(XHContentContainerViewOriginX, 0.0f) animated:NO];
        [self.scrollView addSubview:self.leftContainerView];
        [self.scrollView addSubview:self.contentContainerView];
        [self addSubview:self.scrollView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
     self.backgroundView.frame = self.bounds;
    [self.contentContainerView bringSubviewToFront:self.contentContainerButton];
}

#pragma mark - Accessors
- (void)setBackgroundView:(UIView *)backgroundView {
    [self.backgroundView removeFromSuperview];
    _backgroundView = backgroundView;
    [self insertSubview:self.backgroundView atIndex:0];
}

@end
