//
//  ArgumentCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/21/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

- (void)awakeFromNib {
    // Initialization code
}

- (CGFloat)heightOfCell {
    return 268;
}

- (void)updateWithImage:(UIImage *)image {
    self.imageView.image = image;
}

@end
