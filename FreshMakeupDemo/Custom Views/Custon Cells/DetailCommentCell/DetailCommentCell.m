//
//  DetailCommentCellTableViewCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/1/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "DetailCommentCell.h"
#import "UIColor+Utility.h"

@implementation DetailCommentCell

- (void)awakeFromNib {
    self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.size.width / 2;
    self.avatarImageView.layer.borderWidth = 0.5;
    self.avatarImageView.layer.borderColor = [[UIColor mainBlueColor] CGColor];
    self.skinTypeLabel.layer.cornerRadius = self.skinTypeLabel.frame.size.width / 2;
}

- (CGFloat)heightOfCell {
    CGRect frame = self.bottomLineImageView.frame;
    return frame.origin.y + frame.size.height;
}

@end
