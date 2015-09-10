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
#import "XHDrawerController.h"
#import "FindViewController+Animation.h"
#import "CirclePopTransition.h"
#import "MineViewController+Animation.h"
#import "UIScreen+Utility.h"
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
- (void)dealloc {
    [self.timer setFireDate:[NSDate distantFuture]];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        return 1;
    } else {
        FindTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FIND_TABLEVIEW_CELL];
        CGRect frame = cell.frame;
        frame.size.width = [UIScreen screenWidth];
        cell.frame = frame;
        CGFloat cellHeight = [cell getCellHeight];
        return cellHeight;
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
    MineViewController *viewController = (MineViewController *)self.drawerController.leftViewController;
    [viewController updateAllCellsToRight];
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:^(BOOL finished) {
        [viewController mineLabelAnimation];
    }];
}

- (IBAction)onClickRightButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                   animationControllerForOperation:(UINavigationControllerOperation)operation
                                                fromViewController:(UIViewController *)fromVC
                                                  toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPop) {
        CirclePopTransition *transition = [CirclePopTransition new];
        return transition;
    }else{
        return nil;
    }
}

@end
