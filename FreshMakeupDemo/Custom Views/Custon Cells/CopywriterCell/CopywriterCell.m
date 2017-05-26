//
//  CopywriterCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/22/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "CopywriterCell.h"
#import "UIScreen+Utility.h"

@implementation CopywriterCell

- (void)awakeFromNib {
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}

- (void)updateWithContentText:(NSString *)contentText {
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
                                  constant:[UIScreen screenWidth] - 40];
    [self.contentView addConstraint:tempWidthConstraint];
    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    [self.contentLabel removeConstraint:tempWidthConstraint];
    return size;
}

- (CGFloat)heightOfCell {
    CGRect frame = self.contentLabel.frame;
    return frame.origin.y + frame.size.height + 30;
}

@end
