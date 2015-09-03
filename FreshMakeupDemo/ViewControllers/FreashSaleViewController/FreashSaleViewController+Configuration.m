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
#import "CommentViewCell.h"
#import "TextCell.h"
#import "TagsTableViewCell.h"
@implementation FreashSaleViewController (Configuration)
- (void)configureViews {
    [self tableViewEdit];
}

- (void)tableViewEdit {
    self.freashSaleTableView.rowHeight = UITableViewAutomaticDimension;
    self.freashSaleTableView.estimatedRowHeight = 20;
    self.freashSaleViewControllerDataSource = [FreashSaleViewControllerDataSource new];
    self.freashSaleTableView.delegate = self;
    self.freashSaleTableView.dataSource = self.freashSaleViewControllerDataSource;
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"TitleHeadCell" bundle:nil] forCellReuseIdentifier:TITLE_HEAD_CELL];
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"ImageMaxCell" bundle:nil] forCellReuseIdentifier:IMAGE_MAX_CELL];
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"CommentViewCell" bundle:nil] forCellReuseIdentifier:COMMENT_VIEW_CELL];
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"TextCell" bundle:nil] forCellReuseIdentifier:TEXT_CELL];
    [self.freashSaleTableView registerNib:[UINib nibWithNibName:@"TagsTableViewCell" bundle:nil] forCellReuseIdentifier:TAGS_TABLEVIEW_CELL];
}

@end
