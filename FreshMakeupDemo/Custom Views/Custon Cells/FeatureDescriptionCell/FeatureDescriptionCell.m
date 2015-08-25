//
//  FeatureDescriptionCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "FeatureDescriptionCell.h"

@implementation FeatureDescriptionCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithTagImage:(UIImage *)image descriptionText:(NSString *)text {
    self.tagImageView.image = image;
    self.descriptionLabel.text = text;
}

@end
