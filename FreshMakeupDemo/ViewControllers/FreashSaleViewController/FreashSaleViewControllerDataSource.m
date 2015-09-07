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
#import "UITableView+FDTemplateLayoutCell.h"

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
    [cell updateWithCoverImage:self.freshSaleInfomationTool.image title:self.freshSaleInfomationTool.title price:self.freshSaleInfomationTool.price];
    return cell;
}

- (UITableViewCell *)commentViewTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indesPath {
    CommentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:COMMENT_VIEW_CELL];
    NSString *comment = @"这款眼部精华真的不错滋润度高不黏腻，保湿效果好，同意涂开并被肌肤快速吸收，味道清香，性价比高这款眼部精华真的不错滋润度高不黏腻，保湿效果好，同意涂开并被肌肤快速吸收，味道清香，性价比高";
    
    [cell updateWithUserImage:[UIImage imageNamed:@"detail_avatar_image.jpg"] userName:@"宝贝" curentFloor:1 commitTime:@"十分钟前" approveCount:200 commentCount:500 commentLabel:comment];
    
       cell.block = ^(CommentViewCell *cell){
           cell.isHide = !cell.isHide;
           [tableView reloadData];
   };
    return cell;
}

- (UITableViewCell *)textTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    TextCell *cell = [tableView dequeueReusableCellWithIdentifier:TEXT_CELL];
    [cell updateWithLabel:self.freshSaleInfomationTool.commentary];
    return cell;
}

- (UITableViewCell *)tagsTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    TagsTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:TAGS_TABLEVIEW_CELL];
    [cell updateWithTage:self.freshSaleInfomationTool.labelArray];
    return cell;
}

@end
