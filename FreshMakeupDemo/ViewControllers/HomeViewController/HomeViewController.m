//
//  HomeViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/14/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

+ (instancetype)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    BookCollectionView *bookCollectionView = [BookCollectionView create];
    [self.view addSubview:bookCollectionView];
    [bookCollectionView setLeftSpace:0];
    [bookCollectionView setRightSpace:0];
    [bookCollectionView setTopSpace:60];
    [bookCollectionView setBottomSpace:-113];
    [self.view layoutIfNeeded];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
