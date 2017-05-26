//
//  BookCollectionView.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/15/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LineLayout.h"
@protocol BookCollectionViewDelegate;

@interface BookCollectionView :UITableViewCell <UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UIView *bottomViewContrainer;
@property (weak, nonatomic) IBOutlet UILabel *nextStackTitleLabel;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (weak, nonatomic) IBOutlet UIImageView *downGuideImageView;
@property (strong, nonatomic) NSMutableArray *images;
@property (weak, nonatomic) id<BookCollectionViewDelegate>delegate;
@property (strong, nonatomic) NSArray *freshMakeupArray;
@property (strong, nonatomic) NSArray *freshSaleArray;
@property (strong, nonatomic) NSArray *freshTryArray;
@property (strong, nonatomic) LineLayout *layout;
@property (weak, nonatomic) IBOutlet UICollectionView *bookCollectionView;

- (void)updateNextGroupTitle:(NSString *)text andDetailInfomationToolArray:(NSArray *)detailInfomationToolArray;
- (void)updateNextGroupTitle:(NSString *)text andFreshSaleInfomationToolArray:(NSArray *)freshSaleInfomationToolArray;
- (void)updateNextGroupTitle:(NSString *)text andFreshTryInformationToolArray:(NSArray *)freshTryInformationToolArray;

- (void)updateWithCurrentIndex:(NSInteger)index;
- (void)startSpriteAnimation;
- (void)stopSpriteAnimation;

@end

@protocol BookCollectionViewDelegate <NSObject>
@optional
- (void)BookCollectionView:(BookCollectionView *)bookCollectionView didSelectItemAtIndex:(NSInteger)index cell:(UICollectionViewCell *)cell;

@end
