//
//  OwnerSayCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "OwnerSayCell.h"

@implementation OwnerSayCell

- (CGFloat)heightOfCell {
    CGRect frame = self.discriptionLabel.frame;
    return frame.origin.y + frame.size.height + 5;
}

- (void)awakeFromNib {
    // Initialization code
}

@end
