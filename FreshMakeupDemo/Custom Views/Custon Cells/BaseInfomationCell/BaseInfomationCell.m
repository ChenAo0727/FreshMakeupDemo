//
//  BaseInfomationCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BaseInfomationCelll.h"

@implementation BaseInfomationCell

- (void)awakeFromNib {
    // Initialization code
}

- (CGFloat)heightOfCell {
    CGRect frame = self.bottomView.frame;
    return frame.origin.y + frame.size.height + 10;
}
- (void)updateWithTitleLabel:(NSString *)label {
    self.titleLabel.text = label;
}
@end
