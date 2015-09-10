//
//  TagCollectionViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TagCollectionViewCell.h"
#import "UIColor+Utility.h"

@implementation TagCollectionViewCell

- (void)awakeFromNib {
    self.layer.cornerRadius = self.frame.size.height / 4;
}

- (void)updateWithTagText:(NSString *)text isTitle:(BOOL)isTitle {
    self.tagTextLabel.text = text;
    if (isTitle) {
        self.backgroundColor = [UIColor whiteColor];
    } else {
        self.backgroundColor = [UIColor colorWithIntRed:230 green:230 blue:230];
    }
    [self layoutIfNeeded];
}

- (CGSize)sizeOfCell {
    CGRect frame = self.tagTextLabel.frame;
    return CGSizeMake(frame.origin.x + frame.size.width + 20, self.frame.size.height);
}

@end
