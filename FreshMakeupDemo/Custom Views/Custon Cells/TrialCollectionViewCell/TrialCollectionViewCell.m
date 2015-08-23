//
//  TrialCollectionViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TrialCollectionViewCell.h"
#import "UIColor+Utility.h"

@implementation TrialCollectionViewCell

- (void)awakeFromNib {
    self.contextView.layer.borderWidth = 0.5;
    self.contextView.layer.borderColor = [[UIColor colorWithIntRed:103 green:212 blue:223] CGColor];
    self.avatarImageVIew.layer.borderWidth = 0.5;
    self.avatarImageVIew.layer.cornerRadius = self.avatarImageVIew.frame.size.width / 2;
    self.avatarImageVIew.layer.borderColor = [[UIColor colorWithIntRed:103 green:212 blue:223] CGColor];
}

@end
