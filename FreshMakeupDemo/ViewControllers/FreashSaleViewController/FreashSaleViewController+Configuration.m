//
//  FreashSaleViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreashSaleViewController+Configuration.h"
#import "TitleHeadCell.h"
#import "ImageMaxCell.h"
@implementation FreashSaleViewController (Configuration)
- (void)configureViews {
    [self tableViewEdit];
}

- (void)tableViewEdit {
    self.freashSaleViewControllerDataSource = [FreashSaleViewControllerDataSource new];
    self.freashSaleTableView.delegate = self;
    self.freashSaleTableView.dataSource = self.freashSaleViewControllerDataSource;
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"TitleHeadCell" bundle:nil] forCellReuseIdentifier:TITLE_HEAD_CELL];
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"ImageMaxCell" bundle:nil] forCellReuseIdentifier:IMAGE_MAX_CELL];
}
@end
