//
//  MoreInfomationCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/22/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "MoreInfomationCell.h"
#import "UIColor+Utility.h"


@implementation MoreInfomationCell

- (void)awakeFromNib {
    self.borderView.layer.borderColor = [[UIColor colorWithIntRed:186 green:186 blue:186] CGColor];
    self.borderView.layer.borderWidth = 0.5;
}

- (void)updateWithMoreInfomtionText:(NSString *)text {
    self.moreInfomationLabel.text = text;
    [self layoutIfNeeded];
    self.borderViewWidthContraint.constant = self.moreInfomationLabel.frame.size.width + 20;
    [self layoutIfNeeded];
}

@end
