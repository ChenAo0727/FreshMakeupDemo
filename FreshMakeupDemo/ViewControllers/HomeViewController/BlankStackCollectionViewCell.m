//
//  BlankStackCollectionViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/19/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BlankStackCollectionViewCell.h"

@implementation BlankStackCollectionViewCell

+ (instancetype)create {
    BlankStackCollectionViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"BlankStackCollectionViewCell" owner:nil options:nil] lastObject];
    cell.translatesAutoresizingMaskIntoConstraints = NO;
    return cell;
}

- (void)awakeFromNib {
    BookCollectionView *bookCollectionView = [BookCollectionView create];
    [self addSubview:bookCollectionView];
    [bookCollectionView setLeftSpace:0];
    [bookCollectionView setRightSpace:0];
    [bookCollectionView setTopSpace:0];
    [bookCollectionView setBottomSpace:0];
}

@end
