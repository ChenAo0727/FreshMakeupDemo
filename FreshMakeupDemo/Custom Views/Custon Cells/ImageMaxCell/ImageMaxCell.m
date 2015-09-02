//
//  ImageMaxCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
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

@end
