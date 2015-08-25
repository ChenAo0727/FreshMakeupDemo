//
//  findViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FindViewController+Configuration.h"
#import "FindTableViewCell.h"
#import "FindBranchTableViewCell.h"
#import "RollCollectionViewCell.h"
#import "UIColor+Utility.h"
#import "FindViewController+Animation.h"
#import "XHDrawerController.h"
@implementation FindViewController (Configuration)
- (void)configureViews {
    [self tableViewEdit];
    [self findRollView];
    [self findTitleView];
    [self findThreeDimensionalRollView];
    [self mineViewEdit];
}
- (void)tableViewEdit {
    self.findViewControllerDataSource = [FindViewControllerDataSource new];
    self.findTableView.tableHeaderView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, self.findTableView.frame.size.width, 350))];
    self.findTableView.tableFooterView = [[UIView alloc] initWithFrame:FOOTER_FRAME];
    self.findTableView.separatorStyle = NO;
    self.findTableView.delegate = self;
    self.findTableView.dataSource = self.findViewControllerDataSource;
    [self.findTableView registerNib:[UINib nibWithNibName:@"FindTableViewCell" bundle:nil] forCellReuseIdentifier:FIND_TABLEVIEW_CELL];
    [self.findTableView registerNib:[UINib nibWithNibName:@"FindBranchTableViewCell" bundle:nil] forCellReuseIdentifier:FIND_BRANCH_TABLEVIEWCELL];
}
- (void)findRollView {
    UIView *rollView = [[UIView alloc] initWithFrame:(CGRectMake(0, 213, 374, 125))];
    rollView.backgroundColor = [UIColor colorFromHexCode:@"#EAEAEA"];
    [self.findTableView.tableHeaderView addSubview:rollView];
    UICollectionViewFlowLayout *classVFL = [[UICollectionViewFlowLayout alloc] init];
    classVFL.itemSize = CGSizeMake(90,125);//单视图的大小
    classVFL.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    classVFL.minimumLineSpacing = 10;//列间距

    self.rollCollectionView = [[UICollectionView alloc] initWithFrame:(CGRectMake(0, 4,374, 119)) collectionViewLayout:classVFL];
    self.rollCollectionView.backgroundColor = [UIColor colorFromHexCode:@"#EAEAEA"];
    self.rollCollectionView.showsHorizontalScrollIndicator = NO;
    self.rollCollectionViewDataSource = [RollCollectionViewDataSource new];
    self.rollCollectionView.dataSource = self.rollCollectionViewDataSource;
    self.rollCollectionView.delegate = self;
    [rollView addSubview: self.rollCollectionView];
    //提前注册
    [self.rollCollectionView registerNib:[UINib nibWithNibName:@"RollCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:ROLL_COLLECTIONVIEW_CELL];
}
- (void)findTitleView {
    UIImageView *titleImageView = [[UIImageView alloc] initWithFrame:(CGRectMake(3, 181, 8, 29))];
    titleImageView.backgroundColor = [UIColor colorFromHexCode:@"#78bab7"];
    [self.findTableView.tableHeaderView addSubview:titleImageView];
    UILabel *titleHeaderLeftLabel = [[UILabel alloc] initWithFrame:(CGRectMake(14, 178, 150, 35))];
    titleHeaderLeftLabel.text = @"闺蜜正在聊";
    [self.findTableView.tableHeaderView addSubview:titleHeaderLeftLabel];
    UILabel *titleHeaderRightLabel = [[UILabel alloc] initWithFrame:(CGRectMake(self.findTableView.frame.size.width, 178, 40, 35))];
    titleHeaderRightLabel.text = @"全部";
    titleHeaderRightLabel.textColor =[UIColor colorFromHexCode:@"#78bab7"];
    [self.findTableView.tableHeaderView addSubview:titleHeaderRightLabel];
    
    UILabel *titleFooterLabel = [[UILabel alloc] initWithFrame:(CGRectMake(145, 17, 90, 33))];
    titleFooterLabel.textAlignment = NSTextAlignmentCenter;
    titleFooterLabel.text = @"往期新品";
    [self.findTableView.tableFooterView addSubview:titleFooterLabel];
    
    UILabel *lateLabel = [[UILabel alloc] init];
    lateLabel.frame = CGRectMake(145, 50, 90, 15);
    lateLabel.textAlignment = NSTextAlignmentCenter;
    lateLabel.text = @"2015年8月10日";
    lateLabel.textColor = [UIColor grayColor];
    lateLabel.font = [UIFont fontWithName:nil size:10];
    [self.findTableView.tableFooterView addSubview:lateLabel];
  
    UIImageView *imageFooterLeftView = [[UIImageView alloc] initWithFrame:(CGRectMake(45, 34.5, 100, 1))];
    imageFooterLeftView.backgroundColor = [UIColor grayColor];
    [self.findTableView.tableFooterView addSubview:imageFooterLeftView];
    [self.findTableView.tableFooterView addSubview:titleFooterLabel];
    UIImageView *imageFooterRightView = [[UIImageView alloc] initWithFrame:(CGRectMake(235, 34.5, 100, 1))];
    imageFooterRightView.backgroundColor = [UIColor grayColor];
    [self.findTableView.tableFooterView addSubview:imageFooterRightView];
}

- (void)mineViewEdit {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(left)];
    self.findLeftIconImageView.userInteractionEnabled = YES;
    [self.findLeftIconImageView addGestureRecognizer:tap];
    
}
- (void)left {
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:NULL];
}
//自定义SECTION
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 45)];
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(self.findTableView.frame.size.width / 2 - 40, 5, 80, 30);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"往期新品";
    [sectionView setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *lateLabel = [[UILabel alloc] init];
    lateLabel.frame = CGRectMake(self.findTableView.frame.size.width / 2 - 100, 35, 200, 15);
    lateLabel.textAlignment = NSTextAlignmentCenter;
    lateLabel.text = @"2015年8月10日";
    lateLabel.textColor = [UIColor grayColor];
    lateLabel.font = [UIFont fontWithName:nil size:10];
    [sectionView addSubview:lateLabel];
    
    UIImageView *imageFooterLeftView = [[UIImageView alloc] initWithFrame:(CGRectMake(self.findTableView.frame.size.width / 2 - 140, 22.5, 100, 1))];
    imageFooterLeftView.backgroundColor = [UIColor grayColor];
    [sectionView addSubview:imageFooterLeftView];
    UIImageView *imageFooterRightView = [[UIImageView alloc] initWithFrame:(CGRectMake(self.findTableView.frame.size.width / 2 + 40, 22.5, 100, 1))];
    imageFooterRightView.backgroundColor = [UIColor grayColor];
    [sectionView addSubview:imageFooterRightView];
    
    
    [sectionView addSubview:label];
    return sectionView;
}

- (void)findThreeDimensionalRollView {
    self.findAutomatiView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 375, 178))];
    [self.findTableView.tableHeaderView addSubview:self.findAutomatiView];
    [self imageData];
    [self imageViewData];
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.findAutomatiView.frame.size.width / 3 + 50, self.findAutomatiView.frame.size.height - 20, 30, 10)];
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor colorFromHexCode:@"#78bab7"];
    [self.findAutomatiView addSubview:self.pageControl];
    self.pageControl.numberOfPages = 4;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:6 target:self selector:@selector(findThreeDimensional) userInfo:nil repeats:YES];
    self.num = 0;
    self.slideMotion = [SlideMotion new];
    self.slideMotion.direction =  SlideMotionDirectionLeft;
    self.slideMotion.delegate = self;
    self.slideMotion.dataSource = self;
    [self.slideMotion attachToView:self.findAutomatiView];

    
}
- (void)imageViewData {
    self.imageViewOne = [[UIImageView alloc] initWithFrame:(CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height))];
    self.imageViewOne.image = self.imageOne;
    [self.findAutomatiView addSubview:self.imageViewOne];
    self.imageViewTow = [[UIImageView alloc] initWithFrame:(CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height))];
    self.imageViewTow.image = self.imageTow;
    [self.findAutomatiView addSubview:self.imageViewTow];
    self.imageViewThree = [[UIImageView alloc] initWithFrame:CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height)];
    self.imageViewThree.image = self.imageThree;
    [self.findAutomatiView addSubview:self.imageViewThree];
    self.imageViewFour = [[UIImageView alloc] initWithFrame:CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height)];
    self.imageViewFour.image = self.imageFour;
    [self.findAutomatiView addSubview:self.imageViewFour];
}
- (void)imageData {
    self.imageOne = [UIImage imageNamed:@"findad1.png"];
    self.imageTow = [UIImage imageNamed:@"findad2.jpg"];
    self.imageThree = [UIImage imageNamed:@"findad3.jpg"];
    self.imageFour = [UIImage imageNamed:@"findad4.jpg"];
}
- (void)findThreeDimensional {
    if (self.num == 0) {
        [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewOne.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewTow.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewOne.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = self.num + 1;
        self.num = 1;
    } else if (self.num == 1) {
        [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewTow.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewThree.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewTow.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewThree.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = self.num + 1;
        self.num = 2;
    } else if (self.num == 2) {
        [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewThree.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewFour.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewThree.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewFour.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = self.num + 1;
        self.num = 3;
    } else {
        [UIView animateKeyframesWithDuration:0.8 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.imageViewFour.frame = CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
            
        } completion:^(BOOL finished) {
            self.imageViewFour.frame = CGRectMake(self.findAutomatiView.frame.size.width, 0, 0, self.findAutomatiView.frame.size.height);
            self.imageViewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width, self.findAutomatiView.frame.size.height);
        }];
        self.pageControl.currentPage = 0;
        self.num = 0;
    }
}
#define mark SlideMotion -delegate
- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    NSInteger set = [[NSString stringWithFormat:@"%g",offset] integerValue];
    if (set < 0) {
        set = set / (-1);
    }
    if (self.num == 0) {
        self.imageViewOne.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width - set, self.findAutomatiView.frame.size.height);
        self.imageViewTow.frame = CGRectMake(self.findAutomatiView.frame.size.width - set, 0, set, self.findAutomatiView.frame.size.height);
        
    } else if (self.num == 1) {
        self.imageViewTow.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width - set, self.findAutomatiView.frame.size.height);
        self.imageViewThree.frame = CGRectMake(self.findAutomatiView.frame.size.width - set, 0, set, self.findAutomatiView.frame.size.height);

    } else if (self.num == 2) {
        self.imageViewThree.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width - set, self.findAutomatiView.frame.size.height);
        self.imageViewFour.frame = CGRectMake(self.findAutomatiView.frame.size.width - set, 0, set, self.findAutomatiView.frame.size.height);
        
    } else {
        self.imageViewFour.frame = CGRectMake(0, 0, self.findAutomatiView.frame.size.width - set, self.findAutomatiView.frame.size.height);
        self.imageViewOne.frame = CGRectMake(self.findAutomatiView.frame.size.width - set, 0, set, self.findAutomatiView.frame.size.height);
    }
    
}
//关闭 定时器
- (void)slideMotion:(SlideMotion *)slideMotion willBeginSlideView:(UIView *)view {
   [self.timer setFireDate:[NSDate distantFuture]];
}

//开启 定时器
- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
   [self.timer setFireDate:[NSDate distantPast]];
}
@end
