//
//  FreashSaleViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreashSaleViewController.h"
#import "FreashSaleViewController+Configuration.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "CommentViewCell.h"
#import "TextCell.h"
#import "UIScreen+Utility.h"
#import "TagsTableViewCell.h"
@interface FreashSaleViewController ()

@end

@implementation FreashSaleViewController
+ (instancetype)create {
    return [[FreashSaleViewController alloc] initWithNibName:@"FreashSaleViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureViews];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 384;
    
    } else if (indexPath.row == 1) {
        TextCell *textCell = [tableView dequeueReusableCellWithIdentifier:TEXT_CELL];
        CGRect frame = textCell.frame;
        frame.size.width = [UIScreen screenWidth];
        textCell.frame = frame;
        CGFloat cellHeight = [textCell heightOfCell];
       return cellHeight;
    } else if (indexPath.row == 2) {
        CGFloat cellHeight = [tableView fd_heightForCellWithIdentifier:TAGS_TABLEVIEW_CELL cacheByIndexPath:indexPath configuration:^(TagsTableViewCell *cell) {
            [cell.tagCollectionView reloadData];
            [cell layoutIfNeeded];
            [cell updateHeightConstraint];
            CGRect frame = cell.frame;
            frame.size.width = [UIScreen screenWidth];
            cell.frame = frame;
        }];;
        return cellHeight;
    } else if (indexPath.row == 3) {
        return 50;
    } else if (indexPath.row == 7) {
        return 50;
    } else {
        NSString *comment = @"这款眼部精华真的不错滋润度高不黏腻，保湿效果好，同意涂开并被肌肤快速吸收，味道清香，性价比高这款眼部精华真的不错滋润度高不黏腻，保湿效果好，同意涂开并被肌肤快速吸收，味道清香，性价比高";
        return [tableView fd_heightForCellWithIdentifier:COMMENT_VIEW_CELL cacheByIndexPath:indexPath configuration:^(CommentViewCell *cell) {
            [cell updateWithUserImage:[UIImage imageNamed:@"detail_avatar_image.jpg"] userName:@"宝贝" curentFloor:1 commitTime:@"十分钟前" approveCount:200 commentCount:500 commentLabel:comment];
            [cell.commentTableView reloadData];
            [cell layoutIfNeeded];
            [cell updateHeightConstraint];
//            CGRect frame = cell.frame;
//            frame.size.width = [UIScreen screenWidth];
//            cell.frame = frame;
        }];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
