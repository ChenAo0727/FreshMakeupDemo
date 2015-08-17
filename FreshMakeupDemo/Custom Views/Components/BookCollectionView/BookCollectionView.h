//
//  BookCollectionView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/15/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"

@interface BookCollectionView :AutoLayoutView <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *lineCollectionView;
@property (strong, nonatomic) NSMutableArray *images;

@end
