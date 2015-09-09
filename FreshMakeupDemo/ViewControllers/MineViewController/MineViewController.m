//
//  MineViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/21.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "MineViewController.h"
#import "MineViewController+Animation.h"
#import "PreferentialViewController.h"
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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath  {
    [self guideViewAnimation:indexPath.row];
    if (indexPath.row == 1) {
        PreferentialViewController *preferentialViewController = [[PreferentialViewController alloc] init];
        preferentialViewController.modalPresentationStyle = UIModalPresentationCustom;
        preferentialViewController.transitioningDelegate = self;
        [self presentViewController:preferentialViewController animated:YES completion:nil];
    }
    
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
