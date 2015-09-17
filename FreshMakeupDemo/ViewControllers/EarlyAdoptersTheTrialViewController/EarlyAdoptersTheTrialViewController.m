//
//  EarlyAdoptersTheTrialViewController.m
//  FreshMakeupDemo
//
//  注释
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewController.h"
#import "EarlyAdoptersTheTrialViewController+Configuration.h"
#import "EarlyAdoptersReportTableViewCell.h"
#import "StrengthGameViewController.h"
#import "EarlyAdoptersTheTrialViewController+Animation.h"

@implementation EarlyAdoptersTheTrialViewController
+ (instancetype)create {
    return [[EarlyAdoptersTheTrialViewController alloc] initWithNibName:@"EarlyAdoptersTheTrialViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureViews];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 266;
    } else if (indexPath.row == 1) {
        return 66;
    } else if (indexPath.row == 2) {
        return 12;
    } else if (indexPath.row == 3) {
        return 88;
    } else if (indexPath.row == 4) {
        return 14;
    } else if (indexPath.row == 5) {
        return 47;
    } else if (indexPath.row == 8) {
        return 50;
    } else {
        return 250;
    }
}

- (IBAction)earlyRetainButtonAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)updateDatasourceWithFreshTryTool:(FreshTryInformationTool *)freshTryInformationTool {
    self.earlyAdoptersTheTrialViewControllerDataSource = [EarlyAdoptersTheTrialViewControllerDataSource new];
    self.earlyAdoptersTheTrialViewControllerDataSource.freshTryInformationTool = freshTryInformationTool;
    [self.earlyAdoptersTableView reloadData];
}

- (void)EarlyAdoptersTheTrialViewControllerShakeAshake {
    [self shakeAShakeAction];
}

- (void)EarlyViewControllerStrengthGame {
    StrengthGameViewController *strengthGameViewController = [[StrengthGameViewController alloc] init];
    strengthGameViewController.modalPresentationStyle = UIModalPresentationCustom;
    strengthGameViewController.transitioningDelegate = self;
    [self presentViewController:strengthGameViewController animated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    self.zoomFadeTransition.reverse = NO;
    return self.zoomFadeTransition;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    self.zoomFadeTransition.reverse = YES;
    return self.zoomFadeTransition;
}

@end
