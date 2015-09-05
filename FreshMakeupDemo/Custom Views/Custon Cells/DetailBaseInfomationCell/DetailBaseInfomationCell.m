//
//  DetailBaseInfomationCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/4.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "DetailBaseInfomationCell.h"
#import "UIScreen+Utility.h"

@implementation DetailBaseInfomationCell

- (void)awakeFromNib {
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}
- (CGFloat)heightOfCell {
    CGRect frame = self.detaBaseView.frame;
    return frame.origin.y + self.detaBaseSpeakLabel.frame.size.height + 30;
}

- (CGSize)sizeOfCell {
    CGRect frame = self.detaBaseView.frame;
    self.bounds = CGRectMake(0, 0, 320, self.frame.size.height);
    self.contentView.bounds = self.bounds;
    [self setNeedsLayout];
    [self layoutIfNeeded];
    NSLayoutConstraint *tempWidthConstraint = [NSLayoutConstraint constraintWithItem:self.detaBaseSpeakLabel
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.0
                                  constant:[UIScreen screenWidth] - 20];
    [self.detaBaseSpeakLabel addConstraint:tempWidthConstraint];
    CGSize size = [self.detaBaseSpeakLabel systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    [self.detaBaseSpeakLabel removeConstraint:tempWidthConstraint];
    return CGSizeMake([UIScreen screenWidth], frame.origin.y + size.height + 80);
}

- (void)updateWithTitleLabel:(NSString *)label {
    self.detaBaseTitleLabel.text = label;
}
- (void)updateWithSpeakLabel:(NSString *)label {
    self.detaBaseSpeakLabel.text = label;
}

@end
