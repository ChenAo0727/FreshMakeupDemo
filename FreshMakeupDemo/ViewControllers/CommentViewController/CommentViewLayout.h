//
//  CommentViewLayout.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/8/25.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CommentnViewDelegateWaterfallLayout;

@protocol CommentnViewDelegateWaterfallLayout <UICollectionViewDelegate>

@required
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

@optional
- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section;
@end

@interface CommentViewLayout : UICollectionViewFlowLayout

@property(nonatomic,assign)NSInteger totalNum;

//所有的内容属性
@property (nonatomic, strong) NSMutableArray *allItemAttributes;

//一个联合的正方视图
@property (nonatomic, strong) NSMutableArray *unionRects;

//内容高度
@property(nonatomic,assign)CGFloat itemHeight;

//纵向的高度
@property (nonatomic, strong) NSMutableArray *columnHeights;


@property (nonatomic, weak) id <CommentnViewDelegateWaterfallLayout> delegate;
@end
