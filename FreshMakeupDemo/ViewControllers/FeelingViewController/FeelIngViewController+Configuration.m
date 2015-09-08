//
//  FeelIngViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelIngViewController+Configuration.h"
#import "feelingImageCell.h"
@implementation FeelIngViewController (Configuration)
- (void)configureViews {
    [self tableViewEdit];
}
- (void)tableViewEdit {
    self.feelIngViwControllerDataSource = [FeelIngViwControllerDataSource new];
    self.feelingTableView.delegate = self;
    self.feelingTableView.dataSource = self.feelIngViwControllerDataSource;
    [self.feelingTableView registerNib:[UINib nibWithNibName:@"feelingImageCell" bundle:nil] forCellReuseIdentifier:FEELING_IMAGE_CELL];
}
@end
