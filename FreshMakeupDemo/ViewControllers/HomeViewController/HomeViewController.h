//
//  HomeViewController.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/14/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "BookCollectionView.h"
#import "StackCollectionView.h"

@interface HomeViewController : BaseViewController<StackCollectionViewDataSource, StackCollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *leftIconImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightIconImageView;
@property (strong, nonatomic) StackCollectionView *stackCollectionView;

@end
