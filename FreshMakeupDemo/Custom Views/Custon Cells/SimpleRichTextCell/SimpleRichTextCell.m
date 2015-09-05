//
//  SimpleRichTextCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SimpleRichTextCell.h"

@implementation SimpleRichTextCell

- (void)awakeFromNib {
   self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight; 
}

- (CGSize)sizeOfCell {
//    self.bounds = CGRectMake(0, 0, 320, self.frame.size.height);
//    self.contentView.bounds = self.bounds;
//    [self setNeedsLayout];
//    [self layoutIfNeeded];
//    NSLayoutConstraint *tempWidthConstraint =
//    [NSLayoutConstraint constraintWithItem:self.commentLabel
//                                 attribute:NSLayoutAttributeWidth
//                                 relatedBy:NSLayoutRelationEqual
//                                    toItem:nil
//                                 attribute:NSLayoutAttributeNotAnAttribute
//                                multiplier:1.0
//                                  constant:[UIScreen screenWidth] / 2 - 24];
//    [self.commentLabel addConstraint:tempWidthConstraint];
//    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
//    [self.commentLabel removeConstraint:tempWidthConstraint];
//    return size;
    return CGSizeZero;
}

@end
