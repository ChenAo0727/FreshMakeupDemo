//
//  HomeViewController.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/14/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "BookCollectionView.h"
#import "StackCollectionView.h"
#import "MaterialTransition.h"
#import "FlipTransition.h"

@interface HomeViewController : BaseViewController<UIViewControllerTransitioningDelegate, StackCollectionViewDataSource, StackCollectionViewDelegate, BookCollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *leftIconImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightIconImageView;
@property (weak, nonatomic) IBOutlet UIView *stackViewContainer;
@property (weak, nonatomic) IBOutlet UILabel *nextStackTitleLabel;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (weak, nonatomic) IBOutlet UIImageView *downGuideImageView;
@property (weak, nonatomic) IBOutlet UILabel *updateTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *updateTimeImageView;
@property (weak, nonatomic) IBOutlet UIView *topViewContainer;

@property (strong, nonatomic) StackCollectionView *stackCollectionView;
@property (nonatomic, strong) MaterialTransition *materialTransition;
@property (nonatomic, strong) FlipTransition *flipTransition;

@end
