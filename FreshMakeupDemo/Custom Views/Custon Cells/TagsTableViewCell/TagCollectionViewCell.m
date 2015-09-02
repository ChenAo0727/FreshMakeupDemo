//
//  TagCollectionViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TagCollectionViewCell.h"

@implementation TagCollectionViewCell

- (void)awakeFromNib {
    self.layer.cornerRadius = self.frame.size.height / 4;
}

- (void)updateWithTagText:(NSString *)text {
    self.tagTextLabel.text = text;
    [self layoutIfNeeded];
}

- (CGSize)sizeOfCell {
    CGRect frame = self.tagTextLabel.frame;
    return CGSizeMake(frame.origin.x + frame.size.width + 20, self.frame.size.height);
}

@end
