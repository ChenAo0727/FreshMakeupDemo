//
//  PreferentialCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "PreferentialCell.h"

@implementation PreferentialCell

- (void)awakeFromNib {
    // Initialization code
}
- (void)updateImage:(UIImage *)image {

    self.scrollImage.image = image;


}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
