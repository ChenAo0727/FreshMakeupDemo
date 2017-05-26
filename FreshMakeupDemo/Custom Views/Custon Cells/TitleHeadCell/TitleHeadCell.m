//
//  TitleHeadCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "TitleHeadCell.h"

@implementation TitleHeadCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)updateWithLabel:(NSString *)label {
    self.titleHeadLabel.text = label;
}
@end
