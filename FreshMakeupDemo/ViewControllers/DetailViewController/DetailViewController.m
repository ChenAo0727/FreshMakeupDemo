//
//  DetailViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewController.h"
#import "DetailViewController+Configuration.h"
#import "DetailCollectionViewDatasource.h"
#import "DetailViewController.h"
#import "TitleCell.h"

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

- (IBAction)detailRetainButtonAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (IBAction)detailOnTrialButtonAction:(id)sender {
    EarlyAdoptersTheTrialViewController *earlyAdoptersTheTrialViewController = [[EarlyAdoptersTheTrialViewController alloc] init];
    [self presentViewController:earlyAdoptersTheTrialViewController animated:YES completion:nil];
}

- (void)dealloc {
    self.detailCollectionView.dataSource = nil;
    self.detailCollectionView.delegate = nil;
}

#pragma mark - ScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat expectOffset = self.selectionViewY + 54 - self.detailCollectionView.frame.size.height;
    if (scrollView.contentOffset.y >= expectOffset) {
        [self.selectionView updateBottomSpace:(expectOffset - scrollView.contentOffset.y)];
    } else {
        [self.selectionView updateBottomSpace:0];
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self.detailCollectionViewDatasource collectionView:collectionView layout:collectionViewLayout sizeForItemAtIndexPath:indexPath];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section {
    return [self.detailCollectionViewDatasource collectionView:collectionView layout:collectionViewLayout columnCountForSection:section];
}


@end
