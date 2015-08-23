//
//  findViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FindViewControllerDataSource.h"
#import "BaseViewController.h"
#import "RollCollectionViewDataSource.h"
#import "FindAutomatiRollingView.h"
@interface FindViewController :BaseViewController <UITableViewDelegate,UICollectionViewDelegate>


@property (strong, nonatomic) IBOutlet UILabel *findTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *findLeftIconImageView;
@property (strong, nonatomic) IBOutlet UIImageView *findRightIconImageView;
@property (strong, nonatomic) IBOutlet UITableView *findTableView;



@property (strong, nonatomic) FindViewControllerDataSource *findViewControllerDataSource;
@property (strong, nonatomic) UICollectionView *rollCollectionView;
@property (strong, nonatomic) RollCollectionViewDataSource *rollCollectionViewDataSource;
@property (strong, nonatomic) FindAutomatiRollingView *findAutomatiRollingView;
@end
