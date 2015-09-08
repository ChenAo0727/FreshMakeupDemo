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
#import "MineViewController+Animation.h"
@implementation FindViewController (Configuration)
- (void)getScreenWidth {
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGSize size = rect.size;
    self.width = size.width;
}
- (void)configureViews {
    [self tableViewEdit];
    [self findRollView];
    [self findTitleView];
    [self findThreeDimensionalRollView];
    [self mineViewEdit];
    self.navigationController.delegate = self;
}
- (void)tableViewEdit {
    self.findViewControllerDataSource = [FindViewControllerDataSource new];
    self.findTableView.tableHeaderView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, self.width, 380))];
    self.findTableView.separatorStyle = NO;
    self.findTableView.delegate = self;
    self.findTableView.dataSource = self.findViewControllerDataSource;
    [self.findTableView registerNib:[UINib nibWithNibName:@"FindTableViewCell" bundle:nil] forCellReuseIdentifier:FIND_TABLEVIEW_CELL];
    [self.findTableView registerNib:[UINib nibWithNibName:@"FindBranchTableViewCell" bundle:nil] forCellReuseIdentifier:FIND_BRANCH_TABLEVIEWCELL];
}
- (void)findRollView {
    UIView *rollView = [[UIView alloc] initWithFrame:(CGRectMake(0, 213, self.width, 155))];
    rollView.backgroundColor = [UIColor colorFromHexCode:@"#EAEAEA"];
    [self.findTableView.tableHeaderView addSubview:rollView];
    UICollectionViewFlowLayout *classVFL = [[UICollectionViewFlowLayout alloc] init];
    classVFL.itemSize = CGSizeMake(120,147);//单视图的大小
    classVFL.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    classVFL.minimumLineSpacing = 10;//列间距
 
    self.rollCollectionView = [[UICollectionView alloc] initWithFrame:(CGRectMake(0, 4,self.width, 147)) collectionViewLayout:classVFL];
    self.rollCollectionView.backgroundColor = [UIColor colorFromHexCode:@"#EAEAEA"];
    self.rollCollectionView.showsHorizontalScrollIndicator = NO;
    self.rollCollectionViewDataSource = [RollCollectionViewDataSource new];
    self.rollCollectionView.delegate = self;
    self.rollCollectionView.dataSource = self.rollCollectionViewDataSource;
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
    UILabel *titleHeaderRightLabel = [[UILabel alloc] initWithFrame:(CGRectMake(self.width - 50, 178, 40, 35))];
    titleHeaderRightLabel.text = @"全部";
    titleHeaderRightLabel.textColor =[UIColor colorFromHexCode:@"#78bab7"];
    [self.findTableView.tableHeaderView addSubview:titleHeaderRightLabel];
}
- (void)mineViewEdit {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(left)];
    self.findLeftIconImageView.userInteractionEnabled = YES;
    [self.findLeftIconImageView addGestureRecognizer:tap];
}
- (void)left {
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:^(BOOL finished) {
        MineViewController *viewController = (MineViewController *)self.drawerController.leftViewController;
        [viewController mineLabelAnimation];
    }];
}
#pragma mark 自定义SECTION
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    self.seeMoreView = [[SeeMoreView alloc] initWithFrame:(CGRectMake(0, 0, self.width, 45))];
    return self.seeMoreView;
}
- (void)findThreeDimensionalRollView {
    self.findAutomatiView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, self.width, 178))];
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
    [self slideMotinEdit];
}
#pragma mark 手势 添加
- (void)slideMotinEdit {
    self.slideMotion = [SlideMotion new];
    self.slideMotion.direction = SlideMotionDirectionLeft &SlideMotionDirectionRight;
    self.slideMotion.delegate = self;
    self.slideMotion.dataSource = self;
    [self.slideMotion attachToView:self.findAutomatiView];
}
#pragma mark 滚动视图  imageView初始化
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
    self.imageViewFour = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0, self.findAutomatiView.frame.size.height)];
    self.imageViewFour.image = self.imageFour;
    [self.findAutomatiView addSubview:self.imageViewFour];
}
- (void)imageData {
    self.imageOne = [UIImage imageNamed:@"findad1.png"];
    self.imageTow = [UIImage imageNamed:@"findad2.jpg"];
    self.imageThree = [UIImage imageNamed:@"findad3.jpg"];
    self.imageFour = [UIImage imageNamed:@"findad4.jpg"];
}
#define mark SlideMotion -delegate
- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    self.set = [[NSString stringWithFormat:@"%g",offset] integerValue];
    if (self.set < 0) {
    if (self.num == 0) {
        [self findLeftView:self.imageViewOne ViewTow:self.imageViewTow];
    } else if (self.num == 1) {
        [self findLeftView:self.imageViewTow ViewTow:self.imageViewThree];
    } else if (self.num == 2) {
        [self findLeftView:self.imageViewThree ViewTow:self.imageViewFour];
    } else {
        [self findLeftView:self.imageViewFour ViewTow:self.imageViewOne];
    }
    } else {
        if (self.num == 0) {
            [self findRightView:self.imageViewFour ViewTow:self.imageViewOne];
        } else if (self.num == 1) {
            [self findRightView:self.imageViewOne ViewTow:self.imageViewTow];
        } else if (self.num == 2) {
            [self findRightView:self.imageViewTow ViewTow:self.imageViewThree];
        } else {
            [self findRightView:self.imageViewThree ViewTow:self.imageViewFour];
        }

       
    }
}
//关闭 定时器
- (void)slideMotion:(SlideMotion *)slideMotion willBeginSlideView:(UIView *)view {
   [self.timer setFireDate:[NSDate distantFuture]];
}

//手势 结束 重启  动画
- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    if (self.set < -61 ) {
        [self findThreeDimensional];
    } else if (self.set > -60 && self.set < 0) {
        if (self.num == 0) {
            [self returnRightAnimationView:self.imageViewOne ViewTow:self.imageViewTow];
        } else if (self.num == 1) {
            [self returnRightAnimationView:self.imageViewTow ViewTow:self.imageViewThree];
        } else if (self.num == 2) {
            [self returnRightAnimationView:self.imageViewThree ViewTow:self.imageViewFour];
        } else {
            [self returnRightAnimationView:self.imageViewFour ViewTow:self.imageViewOne];
        }
    } else if (self.set > 0 && self.set < 61) {
        if (self.num == 0) {
            [self returnLeftAnimationView:self.imageViewFour ViewTow:self.imageViewOne];
        } else if (self.num == 1) {
            [self returnLeftAnimationView:self.imageViewOne ViewTow:self.imageViewTow];
        } else if (self.num == 2) {
            [self returnLeftAnimationView:self.imageViewTow ViewTow:self.imageViewThree];
        } else {
            [self returnLeftAnimationView:self.imageViewThree ViewTow:self.imageViewFour];
        }
    } else if (self.set > 60) {
        [self findRightDimensional];
    } else  {
        
    }
     self.timer = [NSTimer scheduledTimerWithTimeInterval:6 target:self selector:@selector(findThreeDimensional) userInfo:nil repeats:YES];
}
@end
