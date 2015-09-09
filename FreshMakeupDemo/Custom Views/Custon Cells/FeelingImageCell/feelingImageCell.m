//
//  feelingImageCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "feelingImageCell.h"

@implementation feelingImageCell

- (void)awakeFromNib {
    // Initialization code
    
}
- (CGFloat)getCellHeight {
    
    return self.feelImageView.frame.size.height + 10;
}
- (void)updateWithFeelImageView:(UIImage *)feelImage Feelllabel:(NSString *)feelllabel {
    self.feelImageView.image = feelImage;
    if ([feelllabel isEqualToString:@"0"]) {
        self.feelView.alpha = 0;
       
       [self layoutIfNeeded];
    } else {
        self.feelllabel.text = feelllabel;
    }
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
