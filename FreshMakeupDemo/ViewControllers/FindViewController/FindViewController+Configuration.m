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
    self.findTableView.tableHeaderView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, self.findTableView.frame.size.width, 386))];
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
    UIImageView *titleImageView = [[UIImageView alloc] initWithFrame:(CGRectMake(0, 178, 374, 35))];
    titleImageView.image = [UIImage imageNamed:@"fount_title.png"];
    [self.findTableView.tableHeaderView addSubview:titleImageView];
    
    UILabel *titleHeaderLabel = [[UILabel alloc] initWithFrame:(CGRectMake(158, 338, 90, 35))];
    titleHeaderLabel.text = @"往期新品";
    [self.findTableView.tableHeaderView addSubview:titleHeaderLabel];
    
    UILabel *titleFooterLabel = [[UILabel alloc] initWithFrame:(CGRectMake(158, 17, 90, 35))];
    titleFooterLabel.text = @"往期新品";
    [self.findTableView.tableFooterView addSubview:titleFooterLabel];
}
- (void)findThreeDimensionalRollView {
    self.findAutomatiRollingView = [[FindAutomatiRollingView alloc] initWithFrame:(CGRectMake(0, 0, 375, 178))];
    [self.findTableView.tableHeaderView addSubview:self.self.findAutomatiRollingView];
    
}
- (void)mineViewEdit {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(left)];
    self.findLeftIconImageView.userInteractionEnabled = YES;
    [self.findLeftIconImageView addGestureRecognizer:tap];
    
}
- (void)left {
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:NULL];
}

@end
