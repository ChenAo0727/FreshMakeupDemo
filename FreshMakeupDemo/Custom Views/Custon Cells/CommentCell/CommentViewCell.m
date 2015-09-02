//
//  CommentViewCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "CommentViewCell.h"
#import "UIColor+Utility.h"

@implementation CommentViewCell

- (void)awakeFromNib {
    self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2;
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];

    [super awakeFromNib];
    self.userImage.layer.cornerRadius = self.frame.size.width / 2;
    self.userImage.layer.borderColor = [UIColor greenColor].CGColor;
    self.userImage.layer.borderWidth = 0.4;
    self.userImage.layer.masksToBounds = YES;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}
- (IBAction)addApprove:(id)sender {
    
    CGAffineTransform transform = self.userImage.transform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.approveImage.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.approveImage.transform = self.userImage.transform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.approveCount.text integerValue];
            if (praiseCountLeft == 200) {
                self.approveCount.text = @"201";
                self.approveImage.image = [UIImage imageNamed:@"detail_approve_clicked_icon.png"];
                self.approveCount.textColor = [UIColor colorFromHexCode:@"#EA5E42"];
            } else {
                self.approveCount.text = @"200";
                self.approveImage.image = [UIImage imageNamed:@"detail_approve_icon.png"];
                self.approveCount.textColor = [UIColor grayColor];
            }
        }];
    }];

    
}
- (void)updateWithUserImage:(UIImage *)image userName:(NSString *)name curentFloor:(NSInteger)floor commitTime:(NSString *)time approveCount:(NSInteger)approveCount commentCount:(NSInteger)commentCount commentLabel:(NSString *)comment{
    
    self.userImage.image = image;
    self.userName.text = name;
    if (floor == 1) {
        self.curentFloor.text = @"沙发";
    }else{
        self.curentFloor.text = [NSString stringWithFormat:@"%ld楼",floor];
    }

    self.commitTime.text = time;
    self.approveCount.text = [NSString stringWithFormat:@"%ld",approveCount];
    self.commentCount.text = [NSString stringWithFormat:@"%ld",commentCount];
    self.commentLabel.text = comment;
    [self setNeedsLayout];
    [self layoutIfNeeded];


}
- (void)layoutSubviews{
    [super layoutSubviews];
}
- (IBAction)commentButtonClick:(id)sender {
    
    
    
    
}

- (CGFloat)getCommentHeight{

 return self.bottomLine.frame.size.height + self.bottomLine.frame.origin.y ;
    
    
}

@end
