//
//  FoundViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FoundViewController.h"
#import "FoundViewController+Configuration.h"
#import "FoundViewController+Animation.h"
@interface FoundViewController ()

@end

@implementation FoundViewController
+ (instancetype)create {
    return [[FoundViewController alloc] initWithNibName:@"FoundViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureViews];
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(foundThreeDimensionalRollAnimation) userInfo:nil repeats:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 7) {
        return 18;
    } else {
        return 235;
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
