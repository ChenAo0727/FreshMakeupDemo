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
#import "CommentViewCell.h"
#import "TextCell.h"
#import "TagsTableViewCell.h"
@implementation FreashSaleViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 11;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
            return [self imageMaxTableView:tableView indexPath:indexPath];
            break;
        case 1:
            return [self textTableView:tableView indexPath:indexPath];
            break;
        case 2:
            return [self tagsTableView:tableView indexPath:indexPath];
            break;
        case 3:
            return [self titleHeadTableView:tableView indexPath:indexPath];
            break;
        case 7:
            return [self titleHeadTableView:tableView indexPath:indexPath];
            break;
        default:
             return [self commentViewTableView:tableView indexPath:indexPath];
            break;
    }
    
}

#pragma mark 自定义cell
- (UITableViewCell *)titleHeadTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    TitleHeadCell *cell = [tableView dequeueReusableCellWithIdentifier:TITLE_HEAD_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    if (indexPath.row == 3) {
        [cell updateWithLabel:@"热门评论"];
    } else {
        [cell updateWithLabel:@"最新评论"];
    }
    return cell;
}

- (UITableViewCell *)imageMaxTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    ImageMaxCell *cell = [tableView dequeueReusableCellWithIdentifier:IMAGE_MAX_CELL];
    return cell;
}

- (UITableViewCell *)commentViewTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    CommentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:COMMENT_VIEW_CELL];
        return cell;
}
- (UITableViewCell *)textTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    TextCell *cell = [tableView dequeueReusableCellWithIdentifier:TEXT_CELL];
    return cell;
}

- (UITableViewCell *)tagsTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    TagsTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:TAGS_TABLEVIEW_CELL];
    return cell;
}
@end
