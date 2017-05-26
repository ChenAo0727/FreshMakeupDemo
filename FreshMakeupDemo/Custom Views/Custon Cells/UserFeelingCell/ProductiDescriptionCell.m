//
//  ProductiDescriptionCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/5/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "ProductiDescriptionCell.h"
#import "UIScreen+Utility.h"
#import "UIColor+Utility.h"

@implementation ProductiDescriptionCell

- (void)awakeFromNib {
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.moreInfomationBorderView.layer.borderWidth = 0.5;
    self.moreInfomationBorderView.layer.borderColor = [[UIColor colorWithIntRed:222 green:222 blue:222] CGColor];
}

- (void)updateIsFeeling:(BOOL)isFeeling {
    if (isFeeling) {
        self.titleLabel.text = @"使用感受";
    } else {
        self.titleLabel.text = @"产品简介";
    }
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
