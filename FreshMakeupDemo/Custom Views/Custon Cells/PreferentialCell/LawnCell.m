//
//  LawnCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/9.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "LawnCell.h"

@implementation LawnCell

- (void)awakeFromNib {
    // Initialization code
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
