//
//  FreashSaleViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreashSaleViewControllerDataSource.h"
#import "TitleHeadCell.h"
#import "ImageMaxCell.h"
@implementation FreashSaleViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return [self imageMaxTableView:tableView indexPath:indexPath];
    } else {
    return [self titleHeadTableView:tableView indexPath:indexPath];
    }
}
- (UITableViewCell *)titleHeadTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    TitleHeadCell *cell = [tableView dequeueReusableCellWithIdentifier:TITLE_HEAD_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    if (indexPath.row == 1) {
        cell.titleHeadLabel.text = @"热门评论";
    } else {
        cell.titleHeadLabel.text = @"最新评论";
    }
    return cell;
}
- (UITableViewCell *)imageMaxTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    ImageMaxCell *cell = [tableView dequeueReusableCellWithIdentifier:IMAGE_MAX_CELL];
    return cell;
}
@end
