//
//  FreashSaleViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "FreashSaleViewController.h"
#import "FreashSaleViewController+Configuration.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "CommentViewCell.h"
#import "TextCell.h"
#import "UIScreen+Utility.h"
#import "CommentInfomationTool.h"
#import "TagsTableViewCell.h"

@implementation FreashSaleViewController

+ (instancetype)create {
    return [[FreashSaleViewController alloc] initWithNibName:@"FreashSaleViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureViews];
}

- (IBAction)onClickBackButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    if (indexPath.row == 0) {
        return 384;
    
    } else if (indexPath.row == 1) {
        CGFloat cellHeight = [tableView fd_heightForCellWithIdentifier:TEXT_CELL cacheByIndexPath:indexPath configuration:^(TextCell *cell) {
            [cell updateWithLabel:self.freashSaleViewControllerDataSource.freshSaleInfomationTool.commentary];
        }];
        return cellHeight;
    } else if (indexPath.row == 2) {
        CGFloat cellHeight = [tableView fd_heightForCellWithIdentifier:TAGS_TABLEVIEW_CELL cacheByIndexPath:indexPath configuration:^(TagsTableViewCell *cell) {
            [cell.tagCollectionView reloadData];
            [cell updateWithTage:self.freashSaleViewControllerDataSource.freshSaleInfomationTool.labelArray];
            [cell layoutIfNeeded];
            [cell updateHeightConstraint];
            CGRect frame = cell.frame;
            frame.size.width = [UIScreen screenWidth];
            cell.frame = frame;
        }];
        return cellHeight;
    } else if (indexPath.row == 3) {
        return 50;
    } else if (indexPath.row == 7) {
        return 50;
    } else {
        NSInteger index = 0;
        if (indexPath.row < 7 && indexPath.row > 3) {
            index = indexPath.row - 4;
        } else if(indexPath.row > 7) {
            index = indexPath.row - 8;
        }
        CommentInfomationTool *commentTool = [self.freashSaleViewControllerDataSource.freshSaleInfomationTool.comments objectAtIndex:index];
        return [tableView fd_heightForCellWithIdentifier:COMMENT_VIEW_CELL cacheByIndexPath:indexPath configuration:^(CommentViewCell *cell) {
            [cell updateWithUserImage:commentTool.avatar userName:commentTool.nickName curentFloor:(index + 1) commitTime:@"十分钟前" approveCount:200 commentCount:500 commentLabel:commentTool.commentText];
        }];
    }
}

- (void)updateDatasourceWithFreshSaleTool:(FreshSaleInfomationTool *)freshSaleInfomationTool {
    self.freashSaleViewControllerDataSource = [FreashSaleViewControllerDataSource new];
    self.freashSaleViewControllerDataSource.freshSaleInfomationTool = freshSaleInfomationTool;
    [self.freashSaleTableView reloadData];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
