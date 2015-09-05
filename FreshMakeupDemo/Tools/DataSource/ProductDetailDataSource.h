//
//  ProductDetailDataSource.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailInfomationTool.h"
@interface ProductDetailDataSource : NSObject <UICollectionViewDataSource>
@property (strong, nonatomic) DetailInfomationTool *detailInfomationTool;
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section;
@end
