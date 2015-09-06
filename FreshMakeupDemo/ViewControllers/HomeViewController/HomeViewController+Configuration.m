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
    [self createTransition];
    [self configureTableView];
}

#pragma marks - PrivateMethod

- (void)createTransition {
    self.materialTransition = [[MaterialTransition alloc] init];
    self.materialTransition.startFrame = CGRectMake([UIScreen screenWidth] - 25, -25, 50, 50);
    self.flipTransition = [[FlipTransition alloc] init];
    self.bookFlipTransition = [[BookFlipTransition alloc] init];
    self.bookFlipTransition.delegate = self;
}

- (void)configureTableView {
    self.currentGroupIndex = 0;
    self.groupNameArray = @[@"新鲜美妆", @"新鲜惠", @"新鲜达人", @""];
    self.homeTableView.delegate = self;
    self.homeTableView.dataSource = self;
    [self.homeTableView registerNib:[UINib nibWithNibName:@"BookCollectionView" bundle:nil] forCellReuseIdentifier:@"BookCollectionView"];
}

@end
