//
//  HomeViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+Configuration.h"

@implementation HomeViewController (Configuration)

- (void)configureViews {
    [self configureStackView];
    [self configureGuiAnimation];
}

#pragma marks - PrivateMethod

- (void)configureStackView {
    self.stackCollectionView = [StackCollectionView create];
    [self.stackViewContainer addSubview:self.stackCollectionView];
    [self.stackCollectionView setLeftSpace:0];
    [self.stackCollectionView setRightSpace:0];
    [self.stackCollectionView setTopSpace:0];
    [self.stackCollectionView setBottomSpace:0];
    self.stackCollectionView.delegate = self;
    self.stackCollectionView.dataSource = self;
    [self.stackCollectionView registerClass:[BookCollectionView class] forCellReuseIdentifier:@"BookCollectionView"];
    [self.view layoutIfNeeded];
}

- (void)configureGuiAnimation {
    [self.downGuideImageView setAnimationImages:@[[UIImage imageNamed:@"home_down_guide1"], [UIImage imageNamed:@"home_down_guide2"], [UIImage imageNamed:@"home_down_guide3"]]];
    [self.downGuideImageView setAnimationDuration:1];
}

@end
