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
    } else if (indexPath.row == 2) {
        CommentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommentViewCell"];
        cell.commentLabel.text = @"这款眼部精华真的不错滋润度高不黏腻，保湿效果好，同意涂开并被肌肤快速吸收，味道清香，性价比高这款眼部精华真的不错滋润度高不黏腻，保湿效果好，同意涂开并被肌肤快速吸收，味道清香，性价比高";
        [cell layoutIfNeeded];
     return [cell getCommentHeight];

    } else {
    return 50;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
