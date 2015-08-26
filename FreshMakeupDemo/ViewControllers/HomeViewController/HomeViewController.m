//
//  HomeViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/14/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewController+Configuration.h"
#import "HomeViewController+Animation.h"
#import "XHDrawerController.h"

@interface HomeViewController ()

@end

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
    
}

- (StackCollectionViewCell *)stackCollectionView:(StackCollectionView *)stackCollectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BookCollectionView *cell = (BookCollectionView *)[stackCollectionView dequeueReusableCellWithReuseIdentifier:@"BookCollectionView" forIndexPath:indexPath];
    cell.delegate = self;
    [cell updateWithCurrentIndex:2];
    return cell;
}

- (void)BookCollectionView:(BookCollectionView *)bookCollectionView didSelectItemAtIndex:(NSInteger)index {
    [self animatePushDetailViewController];
}

@end
