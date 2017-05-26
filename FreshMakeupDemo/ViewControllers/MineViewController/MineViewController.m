//
//  MineViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/21.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "MineViewController.h"
#import "MineViewController+Animation.h"
#import "PreferentialViewController.h"
#import "LawnViewController.h"
#import "MineTableViewCell.h"
@interface MineViewController ()

@end

@implementation MineViewController
+ (instancetype)create {
    return [[MineViewController alloc] initWithNibName:@"MineViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self mineConfigureViews];
}
//出现的时候调用
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //[self mineLabelAnimation];
}

- (void)updateAllCellsToRight {
    for (NSInteger i = 0; i < 5; i++) {
        MineTableViewCell *cell = (MineTableViewCell *)[self.mineTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        cell.textLabelLeftConstraint.constant = 320;
        [cell layoutIfNeeded];
    }
}
   
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath  {
    [self guideViewAnimation:indexPath.row];
    [self.drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
        if (indexPath.row == 0) {
//            LawnViewController *lawnViewController = [[LawnViewController alloc]init];
//            [self presentViewController:lawnViewController animated:YES completion:nil];
            
            PreferentialViewController *lawnViewController = [PreferentialViewController create];
            lawnViewController.index = indexPath.row;
            [self presentViewController:lawnViewController animated:YES completion:nil];
            
        }else if (indexPath.row == 1) {

            PreferentialViewController *preferentialViewController = [PreferentialViewController create];
            preferentialViewController.index = indexPath.row;
            [self presentViewController:preferentialViewController animated:YES completion:nil];
        }else if (indexPath.row == 2) {
            PreferentialViewController *probationViewController = [PreferentialViewController create];
            probationViewController.index = indexPath.row;
            [self presentViewController:probationViewController animated:YES completion:nil];
    
        }

    }];
    
    
}
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    self.zoomFadeTransition.reverse = NO;
    return self.zoomFadeTransition;
}
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    self.zoomFadeTransition.reverse = YES;
    return self.zoomFadeTransition;
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
