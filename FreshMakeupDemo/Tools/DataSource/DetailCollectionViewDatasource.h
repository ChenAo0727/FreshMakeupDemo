//
//  DetailCollectionViewDatasource.h
//  FreshMakeupDemo
//
//  Created by chenao on 9/1/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHTCollectionViewWaterfallLayout.h"
#import "DetailInfomationTool.h"

@interface DetailCollectionViewDatasource : NSObject<UICollectionViewDataSource>
@property (strong, nonatomic) DetailInfomationTool *detailInfomationTool;
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section;

@end
