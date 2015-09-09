//
//  PreferentialViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "PreferentialViewController+Configuration.h"

@implementation PreferentialViewController (Configuration)
- (void)configureViews {
    [self tableViewEdit];
}
- (void)tableViewEdit {
    self.preferentialViewControllerDataSource  = [PreferentialViewControllerDataSource new];
    self.preferentialTableView.delegate = self;
    self.preferentialTableView.dataSource = self.preferentialViewControllerDataSource;
    [self.preferentialTableView registerNib:[UINib nibWithNibName:@"" bundle:nil] forCellReuseIdentifier:nil];
}
@end
