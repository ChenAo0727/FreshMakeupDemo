//
//  BookCollectionView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/15/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BookCollectionViewDelegate;

@interface BookCollectionView :UITableViewCell <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *lineCollectionView;
@property (weak, nonatomic) IBOutlet UILabel *nextStackTitleLabel;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (weak, nonatomic) IBOutlet UIImageView *downGuideImageView;
@property (strong, nonatomic) NSMutableArray *images;
@property (weak, nonatomic) id<BookCollectionViewDelegate>delegate;

- (void)updateWithCurrentIndex:(NSInteger)index;
- (void)startSpriteAnimation;
- (void)stopSpriteAnimation;

@end

@protocol BookCollectionViewDelegate <NSObject>
@optional
- (void)BookCollectionView:(BookCollectionView *)bookCollectionView didSelectItemAtIndex:(NSInteger)index cell:(UICollectionViewCell *)cell;

@end
