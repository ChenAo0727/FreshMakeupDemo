//
//  ProductDetailDataSource.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProductDetailDataSource.h"
#import "SimpleRichTextCell.h"
#import "DetailBaseInfomationCell.h"
#import "EvaluationCell.h"
@implementation ProductDetailDataSource

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self isBaseInfoCell:indexPath]) {
        return [self sizeOfDetailBaseInfomationCellWithIndexPath:indexPath];
    } else if ([self isProductionDescriptionCell:indexPath]) {
        SimpleRichTextCell *cell = (SimpleRichTextCell *)[self getCellWithNibName:@"SimpleRichTextCell"];
        return [cell sizeOfCell];
    } else if ([self isUserFeelingCell:indexPath]) {
      return CGSizeMake([UIScreen mainScreen].bounds.size.width, 190);
    } else {
        return CGSizeZero;
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else {
        return 0;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self isBaseInfoCell:indexPath]) {
        return [self detailBaseInfomationCellWithCollectionView:collectionView indexPath:indexPath];
    } else if ([self isProductionDescriptionCell:indexPath]) {
        SimpleRichTextCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:SIMPLE_RICH_TEXTCELL forIndexPath:indexPath];
        return cell;
    } else if ([self isUserFeelingCell:indexPath]) {
        return [self evaluationCellWithCollectionView:collectionView indexPath:indexPath];
    } else {
        return nil;
    }
}
- (UICollectionViewCell *)detailBaseInfomationCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    DetailBaseInfomationCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:DETAIL_BASE_COLLECTION_VIEW_CELL forIndexPath:indexPath];
    [cell updateWithTitleLabel:self.detailInfomationTool.title];
    [cell updateWithSpeakLabel:self.detailInfomationTool.shortComment];
    return cell;
}

- (UICollectionViewCell *)getCellWithNibName:(NSString *)nibName {
    static UICollectionViewCell *cell = nil;
    cell = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil][0];
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    return cell;
}
- (UICollectionViewCell *)evaluationCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    EvaluationCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:EVALUATION_CELL forIndexPath:indexPath];
    return cell;
}


- (BOOL)isBaseInfoCell:(NSIndexPath *)indexPath {
    return (0 == indexPath.row) && (0 == indexPath.section);
}

- (BOOL)isProductionDescriptionCell:(NSIndexPath *)indexPath {
    return (0 == indexPath.section) && (1 == indexPath.row);
}

- (BOOL)isUserFeelingCell:(NSIndexPath *)indexPath {
    return (0 == indexPath.section) && (2 == indexPath.row);
}

- (BOOL)isEvalueCell:(NSIndexPath *)indexPath {
    return  (0 == indexPath.section) && (3 == indexPath.row);
}
- (CGSize)sizeOfDetailBaseInfomationCellWithIndexPath:(NSIndexPath *)indexPath {
    DetailBaseInfomationCell *cell = (DetailBaseInfomationCell *)[self getCellWithNibName:DETAIL_BASE_COLLECTION_VIEW_CELL];
    [cell updateWithSpeakLabel:self.detailInfomationTool.shortComment];
    [cell layoutIfNeeded];
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, [cell heightOfCell]);
}
@end
