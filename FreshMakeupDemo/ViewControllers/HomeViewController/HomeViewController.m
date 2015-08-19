//
//  HomeViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/14/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "BlankStackCollectionViewCell.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

+ (instancetype)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    BookCollectionView *bookCollectionView = [BookCollectionView create];
//    [self.view addSubview:bookCollectionView];
//    [bookCollectionView setLeftSpace:0];
//    [bookCollectionView setRightSpace:0];
//    [bookCollectionView setTopSpace:60];
//    [bookCollectionView setBottomSpace:-113];
    self.stackCollectionView = [StackCollectionView create];
    [self.view addSubview:self.stackCollectionView];
    [self.stackCollectionView setLeftSpace:20];
    [self.stackCollectionView setRightSpace:-20];
    [self.stackCollectionView setTopSpace:100];
    [self.stackCollectionView setBottomSpace:-50];
    self.stackCollectionView.delegate = self;
    self.stackCollectionView.dataSource = self;
    [self.stackCollectionView registerClass:[BlankStackCollectionViewCell class] forCellReuseIdentifier:@"BlankStackCollectionViewCell"];
    
    
    [self.view layoutIfNeeded];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)stackCollectionView:(StackCollectionView *)stackCollectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (StackCollectionViewCell *)stackCollectionView:(StackCollectionView *)stackCollectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BlankStackCollectionViewCell *cell = (BlankStackCollectionViewCell *)[stackCollectionView dequeueReusableCellWithReuseIdentifier:@"BlankStackCollectionViewCell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor redColor];
    } else if (indexPath.row == 1) {
        cell.backgroundColor = [UIColor blackColor];
    } else if (indexPath.row == 2) {
        cell.backgroundColor = [UIColor blueColor];
    } else if (indexPath.row == 3) {
        cell.backgroundColor = [UIColor redColor];
    } else {
        cell.backgroundColor = [UIColor blackColor];
    }
    return cell;
}


@end
