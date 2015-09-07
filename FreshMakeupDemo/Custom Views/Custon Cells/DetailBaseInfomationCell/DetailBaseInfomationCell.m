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
    self.bounds = CGRectMake(0, 0, [UIScreen screenWidth], self.frame.size.height);
    self.contentView.bounds = self.bounds;
    [self setNeedsLayout];
    [self layoutIfNeeded];
    CGRect frame = self.detaBaseSpeakLabel.frame;
    return CGSizeMake([UIScreen screenWidth], 511 + frame.size.height);
}

- (void)updateWithTitleLabel:(NSString *)label {
    self.detaBaseTitleLabel.text = label;
}
- (void)updateWithSpeakLabel:(NSString *)label {
    self.detaBaseSpeakLabel.text = label;
}

@end
