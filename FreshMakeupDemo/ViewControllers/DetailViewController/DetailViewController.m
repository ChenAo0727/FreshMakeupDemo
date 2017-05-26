//
//  DetailViewController.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/17/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewController.h"
#import "DetailViewController+Configuration.h"
#import "DetailCollectionViewDatasource.h"
#import "CommentViewController.h"
#import "DetailViewController.h"
#import "MoreInfomationCell.h"
#import "MoreTitleCell.h"
#import "TitleCell.h"
#import "FreshTryInformationTool.h"
#import "FeelIngViewController.h"
@implementation DetailViewController

+ (instancetype)create {
    return [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self updateSelectionViewY];
}

- (void)updateDatasourceWithDetailTool:(DetailInfomationTool *)detailInfomationTool {
    self.productDetailDataSource = [ProductDetailDataSource new];
    self.productDetailDataSource.delegate = self;
    self.productDetailDataSource.detailInfomationTool = detailInfomationTool;
    [self.detailCollectionView reloadData];
}

- (IBAction)detailRetainButtonAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)ProductDetailDataSourceMoreJump {
    FeelIngViewController *feelIngViewController = [[FeelIngViewController alloc] init];
    feelIngViewController.feelingInformationTool = self.productDetailDataSource.detailInfomationTool.feelingInfomationTool;
    
    feelIngViewController.modalPresentationStyle = UIModalPresentationCustom;
    feelIngViewController.transitioningDelegate = self;
    [self presentViewController:feelIngViewController animated:YES completion:nil];
}

- (void)dealloc {
    self.detailCollectionView.dataSource = nil;
    self.detailCollectionView.delegate = nil;
}

#pragma mark - UICollectionDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    self.detailITitleImageView.hidden = scrollView.contentOffset.y > 280;
    self.lineView.hidden = scrollView.contentOffset.y > 280;
    CGFloat expectOffset = self.selectionViewY + 54 - self.detailCollectionView.frame.size.height;
    if (scrollView.contentOffset.y >= expectOffset) {
        [self.selectionView updateBottomSpace:(expectOffset - scrollView.contentOffset.y)];
    } else {
        [self.selectionView updateBottomSpace:0];
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    if ([cell isKindOfClass:[MoreTitleCell class]]) {
        MoreTitleCell *moreTitleCell = (MoreTitleCell *)cell;
        [moreTitleCell animateZoomOutMoreTitleViewWithCompletion:^(BOOL finished) {
            [self pushViewCommentViewController];
        }];
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self.productDetailDataSource collectionView:collectionView layout:collectionViewLayout sizeForItemAtIndexPath:indexPath];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section {
    return [self.productDetailDataSource collectionView:collectionView layout:collectionViewLayout columnCountForSection:section];
}

#pragma mark - PrivateMethod
- (void)pushViewCommentViewController {
    CommentViewController *commentViewController = [CommentViewController create];
    commentViewController.comments = self.productDetailDataSource.detailInfomationTool.comments;
    commentViewController.modalPresentationStyle = UIModalPresentationCustom;
    commentViewController.transitioningDelegate = self;
    [self presentViewController:commentViewController animated:YES completion:nil];
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
