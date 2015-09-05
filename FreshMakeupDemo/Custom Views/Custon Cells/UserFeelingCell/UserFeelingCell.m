//
//  UserFeelingCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/5/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "UserFeelingCell.h"
#import "UIScreen+Utility.h"

@implementation UserFeelingCell

- (void)awakeFromNib {
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}

- (CGSize)sizeOfCell {
    NSLayoutConstraint *tempWidthConstraint = [NSLayoutConstraint constraintWithItem:self.contentImageView
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.0
                                  constant:[UIScreen screenWidth] - 10];
    [self.contentImageView addConstraint:tempWidthConstraint];
    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size;
    return CGSizeZero;
}

@end
