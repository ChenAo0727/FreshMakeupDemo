//
//  FeelingTextCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelingTextCell.h"

@implementation FeelingTextCell

- (void)awakeFromNib {
    // Initialization code
//    if ([self.FeelingTextLabel.text isEqualToString:@""]) {
//        self.isHideLableImage = YES;
//        self.LableImageView.hidden = YES;
//        self.
//    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateFeelingTextLabel:(NSString *)text {

    if ([text isEqualToString:@""]) {
        
        self.isHideLableImage = YES;
        self.LableImageView.hidden = YES;
        self.TopDottedLineView.hidden = YES;
    
    }else{
    
        self.isHideLableImage = NO;
        self.LableImageView.hidden = NO;
        self.TopDottedLineView.hidden = NO;

    
    }

}

@end
