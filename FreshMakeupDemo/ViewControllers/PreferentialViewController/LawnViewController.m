//
//  LawnViewController.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/9.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "LawnViewController.h"
#import "LawnViewController+Configuration.h"
@interface LawnViewController ()

@end

@implementation LawnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 1000;

}
- (IBAction)returnBack:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
