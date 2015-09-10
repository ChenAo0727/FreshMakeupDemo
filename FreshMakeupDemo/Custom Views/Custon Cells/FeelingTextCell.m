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

- (void)updateFeelingTextLabel:(NSString *)text WithTag:(NSString *)tag{

    if ([tag isEqualToString:@"0"]) {
        
        self.isHideLableImage = YES;
        self.LabelView.hidden = YES;
        self.feelingTextLabel.text = text;
        
    
    }else {
        self.isHideLableImage = NO;
        self.LabelView.hidden = NO;
        self.feelingTextLabel.text = text;
        self.labelNumLabel.text = tag;
    }
    [self layoutIfNeeded];
    [self.dottedLineView drawRect:self.dottedLineView.frame];

}
@end
