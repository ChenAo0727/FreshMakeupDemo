//
//  SimpleRichTextCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SimpleRichTextCell.h"
#import "UIScreen+Utility.h"

@implementation SimpleRichTextCell

- (void)awakeFromNib {
   self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight; 
}

- (void)updateWithCoverImage:(UIImage *)coverImage contentText:(NSString *)contentText {
    self.coverImageView.image = coverImage;
    self.contentLabel.text = contentText;
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
