//
//  DetailBaseInfomationCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/4.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "DetailBaseInfomationCell.h"

@implementation DetailBaseInfomationCell

- (void)awakeFromNib {
    // Initialization code
}
- (CGFloat)heightOfCell {
    CGRect frame = self.detaBaseView.frame;
    return frame.origin.y + self.detaBaseSpeakLabel.frame.size.height + 30;
}
- (void)updateWithTitleLabel:(NSString *)label {
    self.detaBaseTitleLabel.text = label;
}
- (void)updateWithSpeakLabel:(NSString *)label {
    self.detaBaseSpeakLabel.text = label;
}
@end
