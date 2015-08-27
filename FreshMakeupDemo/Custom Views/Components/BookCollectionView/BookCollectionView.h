//
//  BookCollectionView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/15/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "StackCollectionViewCell.h"

@protocol BookCollectionViewDelegate;

@interface BookCollectionView :StackCollectionViewCell <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *lineCollectionView;
@property (strong, nonatomic) NSMutableArray *images;
@property (weak, nonatomic) id<BookCollectionViewDelegate>delegate;

- (void)updateWithCurrentIndex:(NSInteger)index;

@end

@protocol BookCollectionViewDelegate <NSObject>
@optional
- (void)BookCollectionView:(BookCollectionView *)bookCollectionView didSelectItemAtIndex:(NSInteger)index;

@end
