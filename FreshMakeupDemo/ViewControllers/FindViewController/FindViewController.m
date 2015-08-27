//
//  findViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FindViewController.h"
#import "FindViewController+Configuration.h"
#import "FindTableViewCell.h"
#import "FindViewController+Animation.h"
@interface FindViewController ()

@end

@implementation FindViewController
+ (instancetype)create {
    return [[FindViewController alloc] initWithNibName:@"FindViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self getScreenWidth];
    [self configureViews];
   
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        return 1;
    }else{
        if (indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 7) {
            return 12;
        } else {
            FindTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FIND_TABLEVIEW_CELL];
            CGFloat cellHeight = [cell getCellHeight];
            return cellHeight;
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 54;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark UICollectionView 页眉尺寸设置
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    CGSize size = {10,25};
    return size;
}
- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self.findView;
}

- (IBAction)onClickLeftButton:(id)sender {
    
}

- (IBAction)onClickRightButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
