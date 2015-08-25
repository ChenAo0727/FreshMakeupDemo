//
//  EarlyAdoptersTheTrialViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewController+Configuration.h"
#import "EarlyAdoptersTitleImageTableViewCell.h"
#import "EarlyAdoptersReportTitleTableViewCell.h"
#import "EarlyAdoptersReportTableViewCell.h"
#import "EarlyAdoptersReceiveTableViewCell.h"
#import "EarlyAdoptersInformationTableViewCell.h"
#import "EarlyAdoptersPartitionTableViewCell.h"
#import "XHDrawerController.h"
#import "MineViewController+Animation.h"
@implementation EarlyAdoptersTheTrialViewController (Configuration)
- (void)configureViews {
    [self titleEdit];
    [self tableViewEdit];
    [self mineViewEdit];
}
- (void)titleEdit {
    self.title = @"尝鲜试用";
}
- (void)tableViewEdit {
    self.earlyAdoptersTheTrialViewControllerDataSource = [EarlyAdoptersTheTrialViewControllerDataSource new];
    self.earlyAdoptersTheTrialViewControllerDataSource.delegate = self;//摇一摇代理
    self.earlyAdoptersTableView.separatorStyle = NO;//分割线
    self.earlyAdoptersTableView.delegate = self;
    self.earlyAdoptersTableView.dataSource = self.earlyAdoptersTheTrialViewControllerDataSource;

    [self.earlyAdoptersTableView registerNib:[UINib nibWithNibName:@"EarlyAdoptersTitleImageTableViewCell" bundle:nil] forCellReuseIdentifier:EARLY_ADOPTERS_TITLEIMAGE_TABLEVIEW_CELL];
    [self.earlyAdoptersTableView registerNib:[UINib nibWithNibName:@"EarlyAdoptersReportTitleTableViewCell" bundle:nil] forCellReuseIdentifier:EARLY_ADOPTERS_REPORT_TITLE_TABLEVIEW_CELL];
    [self.earlyAdoptersTableView registerNib:[UINib nibWithNibName:@"EarlyAdoptersReportTableViewCell" bundle:nil] forCellReuseIdentifier:EARLY_ADOPTERS_REPORT_TABLEVIEW_CELL];
    [self.earlyAdoptersTableView registerNib:[UINib nibWithNibName:@"EarlyAdoptersReceiveTableViewCell" bundle:nil] forCellReuseIdentifier:EARLY_ADOPTERS_RECEIVE_TABLEVIEW_CELL];
    [self.earlyAdoptersTableView registerNib:[UINib nibWithNibName:@"EarlyAdoptersInformationTableViewCell" bundle:nil] forCellReuseIdentifier:EARLY_ADOPTERS_INFORMATION_TABLEVIEW_CELL];
    [self.earlyAdoptersTableView registerNib:[UINib nibWithNibName:@"EarlyAdoptersPartitionTableViewCell" bundle:nil] forCellReuseIdentifier:EARLY_ADOPTERS_PARTITION_TABLEVIEW_CELL];
}
- (void)mineViewEdit {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(leftAction)];
    self.earlyAdoptersTheTrialLeftInconImage.userInteractionEnabled = YES;
    [self.earlyAdoptersTheTrialLeftInconImage addGestureRecognizer:tap];
    
}
- (void)leftAction {
     [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:^(BOOL finished) {
         MineViewController *viewController = (MineViewController *)self.drawerController.leftViewController;
         [viewController mineLabelAnimation];
     }];
}
@end
