//
//  FeatureDescriptionCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define FEATURE_DESCRIPTION_CELL @"FeatureDescriptionCell"

@interface FeatureDescriptionCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *tagImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

- (void)updateWithTagImage:(UIImage *)image descriptionText:(NSString *)text;

@end
