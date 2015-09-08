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

    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateFeelingTextLabel:(NSString *)text {

    if ([text isEqualToString:@""]) {
        
        self.isHideLableImage = YES;
        self.LabelImage.hidden = YES;
    
    }else{
    
        self.isHideLableImage = NO;
        self.LabelImage.hidden = NO;
        self.FeelingTextLabel.text = text;
            
    }

}
@end
