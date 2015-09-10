//
//  FoundTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FindTableViewCell.h"
#import "UIScreen+Utility.h"

@implementation FindTableViewCell {
    CAGradientLayer *gradientLayer;
}

- (void)awakeFromNib {
    // Initialization code
    [self addGradientMaskToCover];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
- (CGFloat)getCellHeight {
    
    return 265;
}

- (void)updateGradientLayer {
    gradientLayer.frame = CGRectMake(0, 0, [UIScreen screenWidth], [self getCellHeight]);
}

- (void)addGradientMaskToCover {
    gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.findImageView.frame;
    gradientLayer.colors =  @[(id)[[UIColor colorWithWhite:0.f alpha:0.4f] CGColor], (id)[[UIColor colorWithWhite:0.f alpha:0.02f] CGColor]];
    gradientLayer.startPoint = CGPointMake(0.5f, 1.0f);
    gradientLayer.endPoint = CGPointMake(0.5f, 0.5f);
    [self.findImageView.layer insertSublayer:gradientLayer atIndex:0];
}
@end
