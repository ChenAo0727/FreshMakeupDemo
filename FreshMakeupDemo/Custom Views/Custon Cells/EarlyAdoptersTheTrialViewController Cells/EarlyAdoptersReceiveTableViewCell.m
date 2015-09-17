//
//  EarlyAdoptersReceiveTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersReceiveTableViewCell.h"
#import "UIColor+Utility.h"

@implementation EarlyAdoptersReceiveTableViewCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.strengthButton.layer.borderColor = [UIColor colorFromHexCode:@"#48D1CC"].CGColor;
    self.luckButton.layer.borderColor = [UIColor colorFromHexCode:@"#48D1CC"].CGColor;
    self.strengthButton.layer.borderWidth = 0.5;
    self.luckButton.layer.borderWidth = 0.5;
}


- (void)updateWithLuckyAction:(SEL)luckyAction strengthAction:(SEL)strengthAction target:(id)target {
    [self.strengthButton addTarget:target action:strengthAction forControlEvents:UIControlEventTouchUpInside];
    [self.luckButton addTarget:target action:luckyAction forControlEvents:UIControlEventTouchUpInside];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
