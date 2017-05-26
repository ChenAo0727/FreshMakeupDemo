//
//  OwnerSayCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/21/15.
//  Copyright (c) 2015 chenao. All rights reserved.
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
- (void)updateWithLabel:(NSString *)label {
    self.discriptionLabel.text = label;
}
@end
