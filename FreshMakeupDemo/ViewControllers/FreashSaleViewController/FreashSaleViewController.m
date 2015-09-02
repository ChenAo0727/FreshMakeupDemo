//
//  FreashSaleViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreashSaleViewController.h"
#import "FreashSaleViewController+Configuration.h"
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
        TagsTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"TagsTableViewCell" owner:nil options:nil] lastObject];
        CGRect frame = cell.frame;
        frame.size.width = [UIScreen screenWidth];
        cell.frame = frame;
        [cell layoutIfNeeded];
        return [cell heightOfCell];

    } else if (indexPath.row == 3) {
        return 50;
    } else if (indexPath.row == 7) {
        return 50;
    } else {
        CommentViewCell *cell = [[[NSBundle mainBundle]loadNibNamed:@"CommentViewCell" owner:nil options:nil] lastObject];
        CGRect frame = cell.frame;
        frame.size.width = [UIScreen screenWidth];
        cell.frame = frame;
        [cell layoutIfNeeded];
        return [cell getCommentHeight];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
