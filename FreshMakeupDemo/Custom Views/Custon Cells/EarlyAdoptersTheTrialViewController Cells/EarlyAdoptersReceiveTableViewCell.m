//
//  EarlyAdoptersReceiveTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersReceiveTableViewCell.h"
@implementation EarlyAdoptersReceiveTableViewCell

- (void)awakeFromNib {
    self.strengthButton.layer.borderWidth = 0.5;
    self.luckButton.layer.borderWidth = 0.5;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
