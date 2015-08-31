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

@implementation HomeViewController

+ (instancetype)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.downGuideImageView startAnimating];
}

- (NSInteger)stackCollectionView:(StackCollectionView *)stackCollectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (IBAction)onClickLeftButton:(id)sender {
//    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:^(BOOL finished) {
//        
//    }];
}

- (IBAction)onClickRightButton:(id)sender {
    FindViewController *findViewController = [FindViewController create];
    findViewController.modalPresentationStyle = UIModalPresentationCustom;
    findViewController.transitioningDelegate = self;
    [self presentViewController:findViewController animated:YES completion:nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BookCollectionView *bookCollectionView = [tableView dequeueReusableCellWithIdentifier:@"BookCollectionView" forIndexPath:indexPath];
    bookCollectionView.delegate = self;
    return bookCollectionView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return tableView.frame.size.height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (void)BookCollectionView:(BookCollectionView *)bookCollectionView didSelectItemAtIndex:(NSInteger)index {
    DetailViewController *detailViewController = [DetailViewController create];
    detailViewController.modalPresentationStyle = UIModalPresentationCustom;
    detailViewController.transitioningDelegate = self;
    [self presentViewController:detailViewController animated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    if ([presented isKindOfClass:[DetailViewController class]]) {
        self.flipTransition.reverse = NO;
        return self.flipTransition;
    } else {
        self.materialTransition.reverse = NO;
        return self.materialTransition;
    }
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    if ([dismissed isKindOfClass:[DetailViewController class]]) {
        self.flipTransition.reverse = YES;
        return self.flipTransition;
    } else {
        self.materialTransition.reverse = YES;
        return self.materialTransition;
    }
}

@end
