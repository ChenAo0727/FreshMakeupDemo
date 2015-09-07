//
//  TextCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "TextCell.h"

@implementation TextCell

- (void)awakeFromNib {
    // Initialization code
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)updateWithLabel:(NSString *)label {
    self.textCellLabel.text = label;
}
- (CGFloat)heightOfCell {
    [self layoutIfNeeded];
    return self.textCellLabel.frame.size.height;
}
@end
