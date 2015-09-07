//
//  HomeViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/14/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewController+Configuration.h"
#import "FindViewController.h"
#import "HomeViewController+Animation.h"
#import "XHDrawerController.h"
#import "DetailViewController.h"
#import "RealBookView.h"
#import "UIImage+Utility.h"
#import "UIScreen+Utility.h"
#import "CirclePushTransition.h"
#import "MineViewController+Animation.h"

@implementation HomeViewController {
    RealBookView *realBook;
}

+ (instancetype)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

- (void)viewDidAppear:(BOOL)animated {
    self.navigationController.delegate = self;
//    [self.downGuideImageView startAnimating];
}

- (NSInteger)stackCollectionView:(StackCollectionView *)stackCollectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (IBAction)onClickLeftButton:(id)sender {
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:^(BOOL finished) {
        MineViewController *viewController = (MineViewController *)self.drawerController.leftViewController;
        [viewController mineLabelAnimation];
        
    }];
}

- (IBAction)onClickRightButton:(id)sender {
    FindViewController *findViewController = [FindViewController create];
    [self.navigationController pushViewController:findViewController animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BookCollectionView *bookCollectionView = [tableView dequeueReusableCellWithIdentifier:@"BookCollectionView" forIndexPath:indexPath];
    [bookCollectionView updateNextGroupTitle:[self.groupNameArray objectAtIndex:indexPath.row + 1]];
    bookCollectionView.delegate = self;
    return bookCollectionView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return tableView.frame.size.height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    BookCollectionView *bookCollectionView = (BookCollectionView *)cell;
    [bookCollectionView stopSpriteAnimation];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSInteger index = scrollView.contentOffset.y / scrollView.frame.size.height;
    if (index != self.currentGroupIndex) {
        [self animateUpdateTitle:[self.groupNameArray objectAtIndex:index]];
        self.currentGroupIndex = index;
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    BookCollectionView *bookCollectionView = (BookCollectionView *)cell;
    [bookCollectionView startSpriteAnimation];
}

- (void)BookCollectionView:(BookCollectionView *)bookCollectionView didSelectItemAtIndex:(NSInteger)index cell:(UICollectionViewCell *)cell {
    realBook = (RealBookView *)cell;
    self.bookFlipTransition.coverImage = [UIImage imageWithView:realBook.coverContainerView];
    UIImage *image = [UIImage imageWithView:realBook.backgroundContanerView];
    self.bookFlipTransition.contentView = [[UIImageView alloc] initWithImage:image];
    DetailViewController *detailViewController = [DetailViewController create];
    detailViewController.modalPresentationStyle = UIModalPresentationCustom;
    detailViewController.transitioningDelegate = self;
    CGFloat top = 133;
    CGFloat height = realBook.coverContainerView.frame.size.height;
    CGFloat width = realBook.coverContainerView.frame.size.width;
    CGFloat left = ([UIScreen screenWidth] - width) / 2;
    CGRect parentRect = CGRectMake(left, top, width, height);
    self.bookFlipTransition.startFrame = parentRect;
    [self presentViewController:detailViewController animated:YES completion:nil];
}

- (void)BookFlipTransitiondidEndCloseAnimation:(BookFlipTransition *)bookFlipTransition {
    realBook.hidden = NO;
}

- (void)BookFlipTransitionWillStartOpenAnimation:(BookFlipTransition *)bookFlipTransition {
    realBook.hidden = YES;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    self.bookFlipTransition.reverse = NO;
    return self.bookFlipTransition;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    self.bookFlipTransition.reverse = YES;
    return self.bookFlipTransition;
}

- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    if (operation == UINavigationControllerOperationPush) {
        CirclePushTransition *transition = [CirclePushTransition new];
        return transition;
    }else{
        return nil;
    }
}

@end
