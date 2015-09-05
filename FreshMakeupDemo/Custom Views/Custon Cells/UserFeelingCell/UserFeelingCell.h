//
//  UserFeelingCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/5/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>


#define USER_FELLING_CELL @"UserFeelingCell"
@interface UserFeelingCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *contentImageView;
@property (weak, nonatomic) IBOutlet UIView *moreInfomationContainerView;
@property (weak, nonatomic) IBOutlet UIView *moreInfomationBorderView;
@property (weak, nonatomic) IBOutlet UILabel *moreInfomationLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentImageViewWidthConstraint;

- (CGSize)sizeOfCell;

@end
