//
//  ImageMaxCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "ImageMaxCell.h"

@implementation ImageMaxCell

- (void)awakeFromNib {
    self.worthSlideView = [WorthSlideView create];
    [self.contentView addSubview:self.worthSlideView];
    [self.worthSlideView setBottomSpace:0];
    [self.worthSlideView setLeftSpace:0];
    [self.worthSlideView setRightSpace:0];
    [self.worthSlideView setHeightConstant:45];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
}

- (void)updateWithCoverImage:(UIImage *)image title:(NSString *)title price:(NSString *)price {
    self.imageMaxLabel.text = title;
    self.imageMaxImageView.image = image;
    [self.worthSlideView updateWithPrice:price worthCount:0 NotWorthCount:0];
}

@end
