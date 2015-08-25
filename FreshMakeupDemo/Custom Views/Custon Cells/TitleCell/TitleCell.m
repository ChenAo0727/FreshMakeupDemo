//
//  TitleCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TitleCell.h"

@implementation TitleCell

- (void)awakeFromNib {
    // Initialization code
}

- (CGFloat)heightOfCell {
    return 60;
}

- (void)updateWithTitleText:(NSString *)titleText {
    self.titleLabel.text = titleText;
}

@end
