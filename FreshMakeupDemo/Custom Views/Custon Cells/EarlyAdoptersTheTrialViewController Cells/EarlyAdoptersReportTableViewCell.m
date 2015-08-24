//
//  EarlyAdoptersReportTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersReportTableViewCell.h"

@implementation EarlyAdoptersReportTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
- (IBAction)earlyClickLeftButtonAction:(id)sender {
    NSInteger praiseCountLeft = [self.earlyClickLeftLabel.text integerValue];
    if (praiseCountLeft == 24) {
        self.earlyClickLeftLabel.text = @"25";
    } else {
        self.earlyClickLeftLabel.text = @"24";
    }
    
    [self layoutIfNeeded];
}
- (IBAction)earlyClickRightButtonAction:(id)sender {
    NSInteger praiseCountRight = [self.earlyClickRightLabel.text integerValue];
    if (praiseCountRight == 24) {
        self.earlyClickRightLabel.text = @"25";
    } else {
        self.earlyClickRightLabel.text = @"24";
    }
    
    [self layoutIfNeeded];

}

- (CGFloat)getCellHeight {
    return 250;
}
@end
