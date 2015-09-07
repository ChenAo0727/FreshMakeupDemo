//
//  SimpleRichTextCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SimpleRichTextCell.h"
#import "UIScreen+Utility.h"
#import "UIColor+Utility.h"

@implementation SimpleRichTextCell

- (void)awakeFromNib {
   self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.moreTitleView.layer.borderColor = [[UIColor colorWithIntRed:186 green:186 blue:186] CGColor];
    self.moreTitleView.layer.borderWidth = 0.5;
}

- (void)updateWithCoverImage:(UIImage *)coverImage contentText:(NSString *)contentText isFeeling:(BOOL)isFeeling {
    if (coverImage) {
        self.coverImageView.image = coverImage;
    } else {
        self.coverImageViewRightConstraint.constant = [UIScreen screenWidth];
    }
    if (isFeeling) {
        self.titleLabel.text = @"使用感受";
        self.descriptionTitleLabel.text = @"感受:";
        self.moreViewHeightConstraint.constant = 32;
    } else {
        self.titleLabel.text = @"产品介绍";
        self.descriptionTitleLabel.text = @"简介:";
        self.moreViewHeightConstraint.constant = 0;
    }
    if ([contentText isEqual:@""]) {
        self.contentLabel.text = @"没有文字内容啦~~";
    } else {
        self.contentLabel.text = contentText;
    }
}

- (CGSize)sizeOfCell {
    self.bounds = CGRectMake(0, 0, 320, self.frame.size.height);
    self.contentView.bounds = self.bounds;
    [self setNeedsLayout];
    [self layoutIfNeeded];
    NSLayoutConstraint *tempWidthConstraint =
    [NSLayoutConstraint constraintWithItem:self.contentLabel
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.0
                                  constant:[UIScreen screenWidth] - 35];
    [self.contentLabel addConstraint:tempWidthConstraint];
    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    [self.contentLabel removeConstraint:tempWidthConstraint];
    return size;
}

@end
