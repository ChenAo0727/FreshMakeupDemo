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
#import "SlideMotion.h"
#import "FindViewController.h"
#import "SeeMoreView.h"
@interface FindViewController :BaseViewController <UITableViewDelegate,SlideMotionDataSource,SlideMotionDelegate,UICollectionViewDelegate, UINavigationControllerDelegate>


@property (strong, nonatomic) IBOutlet UILabel *findTitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *findLeftIconImageView;
@property (strong, nonatomic) IBOutlet UIImageView *findRightIconImageView;
@property (strong, nonatomic) IBOutlet UITableView *findTableView;
@property (strong, nonatomic) IBOutlet UIView *findView;
@property (strong, nonatomic) NSMutableArray *fenquArr;
@property (assign, nonatomic) NSInteger width;

@property (strong, nonatomic) FindViewControllerDataSource *findViewControllerDataSource;
@property (strong, nonatomic) UICollectionView *rollCollectionView;
@property (strong, nonatomic) RollCollectionViewDataSource *rollCollectionViewDataSource;
@property (strong, nonatomic) SeeMoreView *seeMoreView;
//滚动视图
@property (strong, nonatomic) UIImageView *imageViewOne;
@property (strong, nonatomic) UIImageView *imageViewTow;
@property (strong, nonatomic) UIImageView *imageViewFour;
@property (strong, nonatomic) UIImage *imageOne;
@property (strong, nonatomic) UIImage *imageTow;
@property (strong, nonatomic) UIImage *imageFour;
@property (assign, nonatomic) NSInteger num;
@property (retain, nonatomic) UIPageControl *pageControl;
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) SlideMotion *slideMotion;
@property (strong, nonatomic) FindViewController *findViewController;
@property (strong, nonatomic) UIView *findAutomatiView;
@property (assign, nonatomic)  NSInteger set;
@end
