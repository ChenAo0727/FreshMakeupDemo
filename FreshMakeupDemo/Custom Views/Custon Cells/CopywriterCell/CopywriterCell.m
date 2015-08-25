//
//  CopywriterCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "CopywriterCell.h"

@implementation CopywriterCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithContentText:(NSString *)contentText {
    self.contentLabel.text = [NSString stringWithFormat:@"%@%@", @"文案:", contentText];
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
}

- (CGFloat)heightOfCell {
    CGRect frame = self.contentLabel.frame;
    return frame.origin.y + frame.size.height + 30;
}

@end
