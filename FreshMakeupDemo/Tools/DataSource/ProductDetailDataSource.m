//
//  ProductDetailDataSource.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/4/15.
//  Copyright (c) 2015 chenao. All rights reserved.
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
#import "FeelIngViewController.h"
@implementation ProductDetailDataSource

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self isBaseInfoCell:indexPath]) {
        return [self sizeOfDetailBaseInfomationCellWithIndexPath:indexPath];
    } else if ([self isUserFeeling:indexPath]) {
        if ([[self.detailInfomationTool.feeling objectAtIndex:0] objectForKey:@"video"]) {
            return [self productionCellSizeWithCollectionView:collectionView indexPath:indexPath isFeeling:YES video:@""];
        } else {
            NSDictionary *userFeeling = [self.detailInfomationTool.feeling objectAtIndex:0];
            return [self userFeelingCellSizeWithCollectionView:collectionView indexPath:indexPath data:userFeeling isFeeling:YES];
        }
    }else if ([self isCommentCell:indexPath]) {
        CommentCell *cell = (CommentCell *)[self getCellWithNibName:@"CommentCell"];
        [cell updateWithCommentInfomationTool:[self.detailInfomationTool.comments objectAtIndex:indexPath.row]];
        return [cell sizeOfCell];
    } else if ([self isProductiDescriptionCell:indexPath]) {
        if ([[self.detailInfomationTool.productionDescription objectAtIndex:0] objectForKey:@"video"]) {
            return [self productionCellSizeWithCollectionView:collectionView indexPath:indexPath isFeeling:NO video:@""];
        } else {
            NSDictionary *userFeeling = [self.detailInfomationTool.productionDescription objectAtIndex:0];
            return [self userFeelingCellSizeWithCollectionView:collectionView indexPath:indexPath data:userFeeling isFeeling:NO];
        }
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
        if ([[self.detailInfomationTool.feeling objectAtIndex:0] objectForKey:@"video"]) {
            return [self productionCellWithCollectionView:collectionView indexPath:indexPath isFeeling:YES video:@""];
        } else {
            return [self userFeelingCellWithCollectionView:collectionView indexPath:indexPath data:[self.detailInfomationTool.feeling objectAtIndex:0] isFeeling:YES];
        }
    } else if ([self isProductiDescriptionCell:indexPath]) {
        if ([[self.detailInfomationTool.productionDescription objectAtIndex:0] objectForKey:@"video"]) {
            return [self productionCellWithCollectionView:collectionView indexPath:indexPath isFeeling:NO video:@""];
        } else {
            return [self userFeelingCellWithCollectionView:collectionView indexPath:indexPath data:[self.detailInfomationTool.productionDescription objectAtIndex:0] isFeeling:NO];
        }
    } else if ([self isEvalueCell:indexPath]) {
        return [self evaluationCellWithCollectionView:collectionView indexPath:indexPath];
    } else if ([self isCommentCell:indexPath] ) {
        CommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:COMMENT_CELL forIndexPath:indexPath];
        [cell updateWithCommentInfomationTool:[self.detailInfomationTool.comments objectAtIndex:indexPath.row]];
        if (cell.frame.origin.x < 20) {
            cell.rightLine.hidden = NO;
        } else {
            cell.rightLine.hidden = YES;
        }
        return cell;
    } else if ([self moreTitleCell:indexPath]) {
        MoreTitleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:MORE_TITLE_CELL forIndexPath:indexPath];
        return cell;
    } else if ([self isTrailCell:indexPath]){
        TrialCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:TRIAL_COLLECTION_VIEW_CELL forIndexPath:indexPath];
        [cell updateWithTrialInfomationTool:[self.detailInfomationTool.trials objectAtIndex:indexPath.row]];
        return cell;
    }
    else {
        return nil;
    }
}

- (CGSize)userFeelingCellSizeWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath data:(NSDictionary *)data isFeeling:(BOOL)isFeeling {
    SimpleRichTextCell *cell = (SimpleRichTextCell *)[self getCellWithNibName:@"SimpleRichTextCell"];
    [cell updateWithCoverImage:[UIImage imageNamed:[data objectForKey:@"image"]] contentText:[data objectForKey:@"text"] isFeeling:isFeeling];
    return [cell sizeOfCell];
}

- (CGSize)productionCellSizeWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath isFeeling:(BOOL)isFeeling video:(NSString *)video {
    ProductiDescriptionCell *cell = (ProductiDescriptionCell *)[self getCellWithNibName:@"ProductiDescriptionCell"];
    [cell updateIsFeeling:isFeeling];
    return [cell sizeOfCell];
}

- (UICollectionViewCell *)productionCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath isFeeling:(BOOL)isFeeling video:(NSString *)video {
    ProductiDescriptionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:USER_FELLING_CELL forIndexPath:indexPath];
    [cell updateIsFeeling:isFeeling];
    return cell;
}

- (UICollectionViewCell *)userFeelingCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath data:(NSDictionary *)data isFeeling:(BOOL)isFeeling {
    SimpleRichTextCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:SIMPLE_RICH_TEXTCELL forIndexPath:indexPath];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(moreViewAction)];
    cell.moreTitleView.userInteractionEnabled = YES;
    [cell.moreTitleView addGestureRecognizer:tap];
    [cell updateWithCoverImage:[UIImage imageNamed:[data objectForKey:@"image"]] contentText:[data objectForKey:@"text"] isFeeling:isFeeling];
    return cell;
}

- (UICollectionViewCell *)detailBaseInfomationCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    
    DetailBaseInfomationCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:DETAIL_BASE_COLLECTION_VIEW_CELL forIndexPath:indexPath];
    [cell updateWithTitleLabel:self.detailInfomationTool.title];
    [cell updateWithSpeakLabel:self.detailInfomationTool.shortComment];
    [cell updatewithTitleImageView:self.detailInfomationTool.titleImage];
    [cell updateWithFitCrowd:self.detailInfomationTool.fitCrowd origin:self.detailInfomationTool.origin specification:self.detailInfomationTool.specification price:self.detailInfomationTool.price];
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
    
    return (0 == indexPath.section) && (2 == indexPath.row);
}

- (BOOL)isProductiDescriptionCell:(NSIndexPath *)indexPath {
    
    return (0 == indexPath.section) && (1 == indexPath.row);
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
    [cell updateWithFitCrowd:self.detailInfomationTool.fitCrowd origin:self.detailInfomationTool.origin specification:self.detailInfomationTool.specification price:self.detailInfomationTool.price];
    return [cell sizeOfCell];
}

- (void)moreViewAction {
    if ([self.delegate respondsToSelector:@selector(ProductDetailDataSourceMoreJump)]) {
        [self.delegate ProductDetailDataSourceMoreJump];
    }
    

}
@end
