//
//  DetailCollectionViewDatasource.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailCollectionViewDatasource.h"
#import "BaseInfomationCelll.h"
#import "MoreInfomationCell.h"
#import "FeatureDescriptionCell.h"
#import "TrialCollectionViewCell.h"
#import "CopywriterCell.h"
#import "CommentCell.h"
#import "OwnerSayCell.h"
#import "ImageCell.h"
#import "TitleCell.h"

@implementation DetailCollectionViewDatasource

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
            return [self sizeOfCellInSectionZeroOfIndex:indexPath];
        case 1:
            return [self sizeOfCellInSectionOneOfIndex:indexPath];
        case 2:
            return [self sizeOfCellInSectionTwoOfIndex:indexPath];
        case 3:
            return [self sizeOfCellInSectionThreeOfIndex:indexPath];
        case 4:
            return [self sizeOfCellInSectionFourOfIndex:indexPath];
        case 5:
            return [self sizeOfCellInSectionFiveOfIndex:indexPath];
        case 6:
            return [self sizeOfCellInSectionSixOfIndex:indexPath];
        case 7:
            return [self sizeOfCellInSectionSevenOfIndex:indexPath];
        case 8:
            return [self sizeOfMoreInfomationCell];
        default:
            return CGSizeZero;
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section {
    switch (section) {
        case 5:
            return 2;
        case 7:
            return 2;
        default:
            return 1;
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 9;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 3;
        case 1:
            return 6;
        case 2:
            return 3;
        case 3:
            return 3;
        case 4:
            return 2;
        case 5:
            return 6;
        case 6:
            return 2;
        case 7:
            return 4;
        case 8:
            return 1;
        default:
            return 0;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
            return [self generateCellInSectionZeroWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateCellInSectionOneWithCollectionView:collectionView indexPath:indexPath];
        case 2:
            return [self generateCellInSectionTwoWithCollectionView:collectionView indexPath:indexPath];
        case 3:
            return [self generateCellInSectionThreeWithCollectionView:collectionView indexPath:indexPath];
        case 4:
            return [self generateCellInSectionFourWithCollectionView:collectionView indexPath:indexPath];
        case 5:
            return [self generateCellInSectionFiveWithCollectionView:collectionView indexPath:indexPath];
        case 6:
            return [self generateCellInSectionSixWithCollectionView:collectionView indexPath:indexPath];
        case 7:
            return [self generateCellInSectionSevenWithCollectionView:collectionView indexPath:indexPath];
        case 8:
            return [self generateMoreInfomationCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return nil;
    }
}

#pragma mark - Cell Factory

- (UICollectionViewCell *)generateCellInSectionZeroWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self generateTopCellWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateBaseInfomationCellWithCollectionView:collectionView indexPath:indexPath];
        case 2:
            return [self generateOwnerSayCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return nil;
    }
}

- (UICollectionViewCell *)generateCellInSectionOneWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self generateTitleCellWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateImageCellWithCollectionView:collectionView indexPath:indexPath];
        case 5:
            return [self generateCopywriterCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return [self generateFeatureDescriptionCellWithCollectionView:collectionView indexPath:indexPath];
    }
}

- (UICollectionViewCell *)generateCellInSectionTwoWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self generateTitleCellWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateImageCellWithCollectionView:collectionView indexPath:indexPath];
        case 2:
            return [self generateCopywriterCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return nil;
    }
}

- (UICollectionViewCell *)generateCellInSectionThreeWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self generateTitleCellWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateImageCellWithCollectionView:collectionView indexPath:indexPath];
        case 2:
            return [self generateMoreInfomationCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return nil;
    }
}

- (UICollectionViewCell *)generateCellInSectionFourWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath  {
    switch (indexPath.row) {
        case 0:
            return [self generateTitleCellWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateSelctionCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return nil;
    }
}

- (UICollectionViewCell *)generateCellInSectionSevenWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    TrialCollectionViewCell *cell = (TrialCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:TRIAL_COLLECTION_VIEW_CELL forIndexPath:indexPath];
    return cell;
}

- (UICollectionViewCell *)generateCellInSectionSixWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self generateMoreInfomationCellWithCollectionView:collectionView indexPath:indexPath];
        case 1:
            return [self generateTitleCellWithCollectionView:collectionView indexPath:indexPath];
        default:
            return nil;
    }
}

- (UICollectionViewCell *)generateCellInSectionFiveWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath  {
    CommentCell *cell = (CommentCell *)[collectionView dequeueReusableCellWithReuseIdentifier:COMMENT_CELL forIndexPath:indexPath];
    return cell;
}

- (UICollectionViewCell *)generateMoreInfomationCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    MoreInfomationCell *cell = (MoreInfomationCell *)[collectionView dequeueReusableCellWithReuseIdentifier:MORE_INFOMATION_CELL forIndexPath:indexPath];
    switch (indexPath.section) {
        case 3:
            [cell updateWithMoreInfomtionText:@"以图文形式查看"];
            break;
        default:
            [cell updateWithMoreInfomtionText:@"查看更多"];
            break;
    }
    return cell;
}

- (UICollectionViewCell *)generateCopywriterCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    CopywriterCell *cell = (CopywriterCell *)[collectionView dequeueReusableCellWithReuseIdentifier:COPY_WRITER_CELL forIndexPath:indexPath];
    switch (indexPath.section) {
        case 1:
            [cell updateWithContentText:@"这款美妆拥有四大必杀技, 集补水，保湿，美白，抗皱为一体，绝对是资深护肤达人必备的美妆利器"];
            break;
        case 2:
            [cell updateWithContentText:@"这款美妆拥有四大必杀技, 集补水，保湿，美白，抗皱为一体，绝对是资深护肤达人必备的美妆利器。这款美妆拥有四大必杀技, 集补水，保湿，美白，抗皱为一体，绝对是资深护肤达人必备的美妆利器。"];
        default:
            break;
    }
    return cell;
}

- (UICollectionViewCell *)generateTitleCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    TitleCell *cell = (TitleCell *)[collectionView dequeueReusableCellWithReuseIdentifier:TITLE_CELL forIndexPath:indexPath];
    switch (indexPath.section) {
        case 1:
            [cell updateWithTitleText:@"长草理由"];
            break;
        case 2:
            [cell updateWithTitleText:@"产品介绍"];
            break;
        case 3:
            [cell updateWithTitleText:@"使用感受"];
            break;
        case 4:
            [cell updateWithTitleText:@"评价"];
            break;
        case 6:
            [cell updateWithTitleText:@"试用报告"];
            break;
        default:
            break;
    }
    return cell;
}

- (UICollectionViewCell *)generateImageCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    ImageCell *cell = (ImageCell *)[collectionView dequeueReusableCellWithReuseIdentifier:IMAGE_CELL forIndexPath:indexPath];
    switch (indexPath.section) {
        case 1:
            [cell updateWithImage:[UIImage imageNamed:@"detail_argument_image"]];
            break;
        case 2:
            [cell updateWithImage:[UIImage imageNamed:@"detail_introduction_image"]];
            break;
        case 3:
            [cell updateWithImage:[UIImage imageNamed:@"detail_movie_image"]];
            break;
        default:
            break;
    }
    return cell;
}

- (UICollectionViewCell *)generateFeatureDescriptionCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    FeatureDescriptionCell *cell = (FeatureDescriptionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:FEATURE_DESCRIPTION_CELL forIndexPath:indexPath];
    switch (indexPath.row) {
        case 2:
            [cell updateWithTagImage:[UIImage imageNamed:@"detail_keepwet_icon"] descriptionText:@"一段关于保湿的描述"];
            break;
        case 3:
            [cell updateWithTagImage:[UIImage imageNamed:@"detail_wrinkle_icon"] descriptionText:@"一段关于抗皱的描述"];
            break;
        case 4:
            [cell updateWithTagImage:[UIImage imageNamed:@"detail_good_price_icon"] descriptionText:@"一段关于性价比的描述"];
            break;
        default:
            break;
    }
    return cell;
    
}

- (UICollectionViewCell *)generateSelctionCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

- (UICollectionViewCell *)generateTopCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}
- (UICollectionViewCell *)generateBaseInfomationCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    BaseInfomationCell *cell = (BaseInfomationCell *)[collectionView dequeueReusableCellWithReuseIdentifier:BASE_INFO_CELL forIndexPath:indexPath];
    return cell;
}

- (UICollectionViewCell *)generateOwnerSayCellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    OwnerSayCell *cell = (OwnerSayCell *)[collectionView dequeueReusableCellWithReuseIdentifier:OWNER_SAY_CELL forIndexPath:indexPath];
    return cell;
}

#pragma mark -  Cell Size Factory

- (CGSize)sizeOfCellInSectionFourOfIndex:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self sizeOfTitleCell];
        case 1:
            return CGSizeMake([UIScreen mainScreen].bounds.size.width, 54);
        default:
            return CGSizeZero;
    }
}


- (CGSize)sizeOfCellInSectionSixOfIndex:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self sizeOfMoreInfomationCell];
        case 1:
            return [self sizeOfTitleCell];
        default:
            return CGSizeZero;
    }
}

- (CGSize)sizeOfCellInSectionSevenOfIndex:(NSIndexPath *)indexPath {
    return [self sizeOfTrialCell];
}

- (CGSize)sizeOfCellInSectionFiveOfIndex:(NSIndexPath *)indexPath {
    CommentCell *cell = (CommentCell *)[self getCellWithNibName:@"CommentCell"];
    CGSize size = [cell sizeOfCell];
    return size;
//    return CGSizeMake([UIScreen mainScreen].bounds.size.width, [cell heightOfCell]);
}

- (CGSize)sizeOfCellInSectionThreeOfIndex:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self sizeOfTitleCell];
        case 1:
            return [self sizeOfImageCellInIndexPath:indexPath];
        case 2:
            return [self sizeOfMoreInfomationCell];
        default:
            return CGSizeZero;
    }
}

- (CGSize)sizeOfCellInSectionTwoOfIndex:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self sizeOfTitleCell];
        case 1:
            return [self sizeOfImageCellInIndexPath:indexPath];
        case 2:
            return [self sizeOfCopywriterCellWithIndexPath:indexPath];
        default:
            return CGSizeZero;
    }
}

- (CGSize)sizeOfCellInSectionOneOfIndex:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return [self sizeOfTitleCell];
        case 1:
            return [self sizeOfImageCellInIndexPath:indexPath];
        case 5:
            return [self sizeOfCopywriterCellWithIndexPath:indexPath];
        default:
            return [self sizeOfFeatureDecriptionCell];
    }
}

- (CGSize)sizeOfCellInSectionZeroOfIndex:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return CGSizeMake([UIScreen mainScreen].bounds.size.width, 285);
        case 1:
            return [self sizeOfBaseInfomationCellWithIndexPath:indexPath];
        case 2:
            return [self sizeOfOwnerSayCellWithIndexPath:indexPath];
        default:
            return CGSizeZero;
    }
}

- (CGSize)sizeOfCopywriterCellWithIndexPath:(NSIndexPath *)indexPath {
    CopywriterCell *cell = (CopywriterCell *)[self getCellWithNibName:@"CopywriterCell"];
    switch (indexPath.section) {
        case 1:
            [cell updateWithContentText:@"这款美妆拥有四大必杀技, 集补水，保湿，美白，抗皱为一体，绝对是资深护肤达人必备的美妆利器"];
            break;
        case 2:
            [cell updateWithContentText:@"这款美妆拥有四大必杀技, 集补水，保湿，美白，抗皱为一体，绝对是资深护肤达人必备的美妆利器。这款美妆拥有四大必杀技, 集补水，保湿，美白，抗皱为一体，绝对是资深护肤达人必备的美妆利器。"];
            break;
        default:
            break;
    }
    CGSize size = [cell sizeOfCell];
    return size;
    //return CGSizeMake([UIScreen mainScreen].bounds.size.width, [cell heightOfCell]);
}

- (CGSize)sizeOfFeatureDecriptionCell {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 32);
}

- (CGSize)sizeOfTrialCell {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width / 2, 275);
}

- (CGSize)sizeOfMoreInfomationCell {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 46);
}

- (CGSize)sizeOfImageCellInIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 3) {
        return CGSizeMake([UIScreen mainScreen].bounds.size.width, 220);
    } else {
        return CGSizeMake([UIScreen mainScreen].bounds.size.width, 268);
    }
}

- (CGSize)sizeOfTitleCell {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 60);
}

- (CGSize)sizeOfBaseInfomationCellWithIndexPath:(NSIndexPath *)indexPath {
    BaseInfomationCell *cell = (BaseInfomationCell *)[self getCellWithNibName:@"BaseInfomationCell"];
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, [cell heightOfCell]);
}

- (CGSize)sizeOfOwnerSayCellWithIndexPath:(NSIndexPath *)indexPath {
    OwnerSayCell *cell = (OwnerSayCell *)[self getCellWithNibName:@"OwnerSayCell"];
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, [cell heightOfCell]);
}

- (UICollectionViewCell *)getCellWithNibName:(NSString *)nibName {
    static UICollectionViewCell *cell = nil;
    cell = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil][0];
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    return cell;
}

@end
