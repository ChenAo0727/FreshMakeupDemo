//
//  EarlyAdoptersTheTrialViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewController.h"
#import "EarlyAdoptersTheTrialViewController+Configuration.h"
#import "EarlyAdoptersReportTableViewCell.h"
@interface EarlyAdoptersTheTrialViewController ()

@end

@implementation EarlyAdoptersTheTrialViewController
+ (instancetype)create {
    return [[EarlyAdoptersTheTrialViewController alloc] initWithNibName:@"EarlyAdoptersTheTrialViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
    [self.navigationController popViewControllerAnimated:YES];
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
