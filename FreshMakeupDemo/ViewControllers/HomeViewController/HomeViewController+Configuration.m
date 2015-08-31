//
//  HomeViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+Configuration.h"
#import "UIScreen+Utility.h"

@implementation HomeViewController (Configuration)

- (void)configureViews {
//    [self configureStackView];
    [self configureGuiAnimation];
    [self createTransition];
    [self configureTableView];
}

#pragma marks - PrivateMethod

- (void)createTransition {
    self.materialTransition = [[MaterialTransition alloc] init];
    self.materialTransition.startFrame = CGRectMake([UIScreen screenWidth] - 25, -25, 50, 50);
    self.flipTransition = [[FlipTransition alloc] init];
}

//- (void)configureStackView {
//    self.stackCollectionView = [StackCollectionView create];
//    //[self.stackViewContainer insertSubview:self.stackCollectionView belowSubview:self.bookAnimationView];
//    [self.stackViewContainer addSubview:self.stackCollectionView];
//    [self.stackCollectionView setLeftSpace:0];
//    [self.stackCollectionView setRightSpace:0];
//    [self.stackCollectionView setTopSpace:0];
//    [self.stackCollectionView setBottomSpace:0];
//    self.stackCollectionView.delegate = self;
//    self.stackCollectionView.dataSource = self;
//    [self.stackCollectionView registerClass:[BookCollectionView class] forCellReuseIdentifier:@"BookCollectionView"];
//    [self.view layoutIfNeeded];
//}

- (void)configureGuiAnimation {
    [self.downGuideImageView setAnimationImages:@[[UIImage imageNamed:@"home_down_guide1"], [UIImage imageNamed:@"home_down_guide2"], [UIImage imageNamed:@"home_down_guide3"]]];
    [self.downGuideImageView setAnimationDuration:1];
}

- (void)configureTableView {
    self.homeTableView.delegate = self;
    self.homeTableView.dataSource = self;
    [self.homeTableView registerNib:[UINib nibWithNibName:@"BookCollectionView" bundle:nil] forCellReuseIdentifier:@"BookCollectionView"];
}

@end
