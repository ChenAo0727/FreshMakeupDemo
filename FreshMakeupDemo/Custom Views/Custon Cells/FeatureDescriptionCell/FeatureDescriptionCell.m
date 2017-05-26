//
//  FeatureDescriptionCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/22/15.
//  Copyright (c) 2015 chenao. All rights reserved.
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
