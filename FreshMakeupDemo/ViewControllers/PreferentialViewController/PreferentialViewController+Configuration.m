//
//  PreferentialViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "PreferentialViewController+Configuration.h"
#import "PreferentialCell.h"
@implementation PreferentialViewController (Configuration)
- (void)configureViews {
    [self tableViewEdit];
    [self loadTitleName];
}
- (void)tableViewEdit {
    self.preferentialViewControllerDataSource  = [PreferentialViewControllerDataSource new];

    self.preferentialTableView.delegate = self;
    self.preferentialTableView.dataSource = self.preferentialViewControllerDataSource;
    [self.preferentialTableView registerNib:[UINib nibWithNibName:@"PreferentialCell" bundle:nil] forCellReuseIdentifier:PREFERENTIAL_CELL];
}

- (void)loadTitleName {
    if (self.index == 0) {
        self.TitleLabel.text = @"草地";
        self.preferentialViewControllerDataSource.image = [UIImage imageNamed:@"lawn.jpg"];
    }
    if (self.index == 1) {
        self.TitleLabel.text = @"优惠";
        self.preferentialViewControllerDataSource.image = [UIImage imageNamed:@"preferential"];

    }else if (self.index == 2){
        self.TitleLabel.text = @"试用";
        self.preferentialViewControllerDataSource.image = [UIImage imageNamed:@"probation.jpg"];
    }

}
@end
