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
#import "UIScreen+Utility.h"
#import "CommentCell.h"
#import "ProductiDescriptionCell.h"
#import "HeaderViewCell.h"
#import "EvaluationCell.h"
#import "MoreTitleCell.h"
#import "TrialCollectionViewCell.h"
@implementation ProductDetailDataSource

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self isBaseInfoCell:indexPath]) {
        return [self sizeOfDetailBaseInfomationCellWithIndexPath:indexPath];
    } else if ([self isUserFeeling:indexPath]) {
        SimpleRichTextCell *cell = (SimpleRichTextCell *)[self getCellWithNibName:@"SimpleRichTextCell"];
        NSDictionary *userFeeling = [self.detailInfomationTool.feeling objectAtIndex:0];
        [cell updateWithCoverImage:[UIImage imageNamed:[userFeeling objectForKey:@"image"]] contentText:[userFeeling objectForKey:@"text"]];
        return [cell sizeOfCell];
    }else if ([self isCommentCell:indexPath]) {
        CommentCell *cell = (CommentCell *)[self getCellWithNibName:@"CommentCell"];
        return [cell sizeOfCell];
    } else if ([self isProductiDescriptionCell:indexPath]) {
        ProductiDescriptionCell *cell = (ProductiDescriptionCell *)[self getCellWithNibName:@"ProductiDescriptionCell"];
        return [cell sizeOfCell];
    } else if ([self isTrailCell:indexPath]){
        TrialCollectionViewCell *cell = (TrialCollectionViewCell *)[self getCellWithNibName:@"TrialCollectionViewCell"];
        return [cell sizeOfCell];
     
    } else if ([self isEvalueCell:indexPath]) {
      return CGSizeMake([UIScreen mainScreen].bounds.size.width, 200);
    } else if ([self moreTitleCell:indexPath]) {
        return CGSizeMake([UIScreen mainScreen].bounds.size.width, 102);
    } else {
        return CGSizeZero;
    }

}

- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section {
    if(section == 1 || section == 3) {
        return 2;
    }
    
    return 1;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 4;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (section == 0) {
        return 4;
    } else if (section == 1){
        //评价
        return 6;
    } else if (section == 2) {
        return 1;
    } else if (section == 3){
    //适用
        return 4;
    
    } else {
        return 0;
    }
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    if ([self isBaseInfoCell:indexPath]) {
        return [self detailBaseInfomationCellWithCollectionView:collectionView indexPath:indexPath];
    } else if ([self isUserFeeling:indexPath]) {
        return [self userFeelingCellWithCollectionView:collectionView indexPath:indexPath];
    } else if ([self isProductiDescriptionCell:indexPath]) {
        ProductiDescriptionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:USER_FELLING_CELL forIndexPath:indexPath];
        return cell;
    } else if ([self isEvalueCell:indexPath]) {
        return [self evaluationCellWithCollectionView:collectionView indexPath:indexPath];
    } else if ([self isCommentCell:indexPath] ) {
        CommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:COMMENT_CELL forIndexPath:indexPath];
        return cell;
    } else if ([self moreTitleCell:indexPath]) {
        MoreTitleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:MORE_TITLE_CELL forIndexPath:indexPath];
        return cell;
    } else if ([self isTrailCell:indexPath]){
        TrialCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:TRIAL_COLLECTION_VIEW_CELL forIndexPath:indexPath];
        return cell;
    
    
    }
    else {
        return nil;
    }
}

- (UICollectionViewCell *)userFeelingCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    SimpleRichTextCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:SIMPLE_RICH_TEXTCELL forIndexPath:indexPath];
    NSDictionary *userFeeling = [self.detailInfomationTool.feeling objectAtIndex:0];
    [cell updateWithCoverImage:[UIImage imageNamed:[userFeeling objectForKey:@"image"]] contentText:[userFeeling objectForKey:@"text"]];
    return cell;
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

- (BOOL)isUserFeeling:(NSIndexPath *)indexPath {
    
    return (0 == indexPath.section) && (1 == indexPath.row);
}

- (BOOL)isProductiDescriptionCell:(NSIndexPath *)indexPath {
    
    return (0 == indexPath.section) && (2 == indexPath.row);
}

- (BOOL)isEvalueCell:(NSIndexPath *)indexPath {
    
    return  (0 == indexPath.section) && (3 == indexPath.row);
}

- (BOOL)isCommentCell:(NSIndexPath *)indexPath {

    return (1 == indexPath.section);
}
- (BOOL)moreTitleCell:(NSIndexPath *)indexPath {
    return (2 == indexPath.section) && (0 == indexPath.row);
}

- (BOOL)isTrailCell:(NSIndexPath *)indexPath{

    return (3 == indexPath.section);

}

- (CGSize)sizeOfDetailBaseInfomationCellWithIndexPath:(NSIndexPath *)indexPath {
    DetailBaseInfomationCell *cell = (DetailBaseInfomationCell *)[self getCellWithNibName:DETAIL_BASE_COLLECTION_VIEW_CELL];
    [cell updateWithSpeakLabel:self.detailInfomationTool.shortComment];
    return [cell sizeOfCell];
}
@end
