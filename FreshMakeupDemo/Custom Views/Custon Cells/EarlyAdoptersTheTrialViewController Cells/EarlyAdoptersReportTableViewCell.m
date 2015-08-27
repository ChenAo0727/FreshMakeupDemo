//
//  EarlyAdoptersReportTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersReportTableViewCell.h"

@implementation EarlyAdoptersReportTableViewCell{
    CGAffineTransform approveTransform;
    CGAffineTransform commentTransform;
}


- (void)awakeFromNib {
    // Initialization code
    approveTransform = self.earlyClickLeftButton.transform;
    commentTransform = self.earlyClickRightButton.transform;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
- (IBAction)earlyClickLeftButtonAction:(id)sender {
    CGAffineTransform transform = approveTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.earlyClickLeftButton.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.earlyClickLeftButton.transform = approveTransform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.earlyClickLeftLabel.text integerValue];
            if (praiseCountLeft == 24) {
                self.earlyClickLeftLabel.text = @"25";
                [self.earlyClickLeftButton setImage:[UIImage imageNamed:@"detail_approve_clicked_icon.png"] forState:UIControlStateNormal];
                self.earlyClickLeftLabel.textColor = [UIColor redColor];
            } else {
                self.earlyClickLeftLabel.text = @"24";
                [self.earlyClickLeftButton setImage:[UIImage imageNamed:@"detail_approve_icon.png"] forState:UIControlStateNormal];
                self.earlyClickLeftLabel.textColor = [UIColor grayColor];
            }
        }];
    }];

    
    
    
    
//    NSInteger praiseCountLeft = [self.earlyClickLeftLabel.text integerValue];
//    if (praiseCountLeft == 24) {
//        self.earlyClickLeftLabel.text = @"25";
//    } else {
//        self.earlyClickLeftLabel.text = @"24";
//    }
//    
//    [self layoutIfNeeded];
}
- (IBAction)earlyClickRightButtonAction:(id)sender {
    CGAffineTransform transform = approveTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.earlyClickRightButton.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.earlyClickRightButton.transform = approveTransform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.earlyClickRightLabel.text integerValue];
            if (praiseCountLeft == 24) {
                self.earlyClickRightLabel.text = @"25";
                [self.earlyClickRightButton setImage:[UIImage imageNamed:@"detail_approve_clicked_icon.png"] forState:UIControlStateNormal];
                self.earlyClickRightLabel.textColor = [UIColor redColor];
            } else {
                self.earlyClickRightLabel.text = @"24";
                [self.earlyClickRightButton setImage:[UIImage imageNamed:@"detail_approve_icon.png"] forState:UIControlStateNormal];
                self.earlyClickRightLabel.textColor = [UIColor grayColor];
            }
        }];
    }];


}

- (CGFloat)getCellHeight {
    return 250;
}
@end
