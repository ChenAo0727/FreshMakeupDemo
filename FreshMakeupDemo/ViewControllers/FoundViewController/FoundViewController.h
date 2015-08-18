//
//  FoundViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoundViewControllerDataSource.h"
#import "BaseViewController.h"
#import "RollCollectionViewDataSource.h"
@interface FoundViewController :BaseViewController <UITableViewDelegate,UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *foundTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *foundLeftIconImageView;
@property (strong, nonatomic) IBOutlet UIImageView *foundRightIconImageView;
@property (strong, nonatomic) IBOutlet UITableView *foundTableView;
@property (strong, nonatomic) FoundViewControllerDataSource *foundViewControllerDataSource;
@property (strong, nonatomic) UICollectionView *rollCollectionView;
@property (strong, nonatomic) RollCollectionViewDataSource *rollCollectionViewDataSource;
@property (strong, nonatomic) UIButton *threeDimensionalOne;
@property (strong, nonatomic) UIButton *threeDimensionalTow;
@property (strong, nonatomic) UIButton *threeDimensionalThree;
@property (strong, nonatomic) UIButton *threeDimensionalFour;
@property (strong, nonatomic) UIView *threeDimensionalView;
@end
