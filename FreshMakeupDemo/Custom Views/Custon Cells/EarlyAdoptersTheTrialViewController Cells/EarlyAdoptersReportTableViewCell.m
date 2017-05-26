//
//  EarlyAdoptersReportTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "EarlyAdoptersReportTableViewCell.h"
#import "UIColor+Utility.h"
@implementation EarlyAdoptersReportTableViewCell{
    CGAffineTransform approveTransform;
    CGAffineTransform commentTransform;
}
- (void)awakeFromNib {
    // Initialization code
    self.earlyLeftView.layer.borderWidth = 1;
    self.earlyLeftView.layer.borderColor = [UIColor colorFromHexCode:@"#9bd5d3"].CGColor;
    self.earlyRightView.layer.borderWidth = 1;
    self.earlyRightView.layer.borderColor = [UIColor colorFromHexCode:@"#9bd5d3"].CGColor;
    approveTransform = self.earlyClickLefImageView.transform;
    commentTransform = self.earlyClickRightImageView.transform;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (IBAction)earlyClickLeftButtonAction:(id)sender {
    CGAffineTransform transform = approveTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.earlyClickLefImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.earlyClickLefImageView.transform = approveTransform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.earlyClickLeftLabel.text integerValue];
            if (praiseCountLeft == 24) {
                self.earlyClickLeftLabel.text = @"25";
                self.earlyClickLefImageView.image = [UIImage imageNamed:@"detail_approve_clicked_icon.png"];
                self.earlyClickLeftLabel.textColor = [UIColor redColor];
            } else {
                self.earlyClickLeftLabel.text = @"24";
                self.earlyClickLefImageView.image = [UIImage imageNamed:@"detail_approve_icon.png"];
                self.earlyClickLeftLabel.textColor = [UIColor grayColor];
            }
        }];
    }];
}
- (IBAction)earlyClickRightButtonAction:(id)sender {
    CGAffineTransform transform = approveTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.earlyClickRightImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.earlyClickRightImageView.transform = approveTransform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.earlyClickRightLabel.text integerValue];
            if (praiseCountLeft == 24) {
                self.earlyClickRightLabel.text = @"25";
                self.earlyClickRightImageView.image =[UIImage imageNamed:@"detail_approve_clicked_icon.png"];
                self.earlyClickRightLabel.textColor = [UIColor redColor];
            } else {
                self.earlyClickRightLabel.text = @"24";
                self.earlyClickRightImageView.image = [UIImage imageNamed:@"detail_approve_icon.png"];
                self.earlyClickRightLabel.textColor = [UIColor grayColor];
            }
        }];
    }];


}

- (CGFloat)getCellHeight {
    return 250;
}
@end
