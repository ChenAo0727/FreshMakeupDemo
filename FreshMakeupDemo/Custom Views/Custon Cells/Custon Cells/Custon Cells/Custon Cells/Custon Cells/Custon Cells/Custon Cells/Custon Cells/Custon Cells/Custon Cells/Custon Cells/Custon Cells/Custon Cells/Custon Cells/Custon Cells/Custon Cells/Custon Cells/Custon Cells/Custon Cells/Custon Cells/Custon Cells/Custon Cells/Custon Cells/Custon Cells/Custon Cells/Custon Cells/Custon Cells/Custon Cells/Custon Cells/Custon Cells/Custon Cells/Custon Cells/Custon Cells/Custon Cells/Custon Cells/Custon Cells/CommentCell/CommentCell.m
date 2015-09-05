//
//  CommentCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "CommentCell.h"
#import "UIColor+Utility.h"
#import "UIScreen+Utility.h"

@implementation CommentCell {
    CGAffineTransform approveTransform;
    CGAffineTransform commentTransform;
}

- (void)awakeFromNib {
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    approveTransform = self.approveImageView.transform;
    commentTransform = self.commentImageView.transform;
    self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.size.width / 2;
    self.avatarImageView.layer.borderWidth = 1;
    self.avatarImageView.layer.borderColor = [[UIColor colorWithIntRed:103 green:212 blue:223] CGColor];
    self.skinPropertyLabel.layer.cornerRadius = self.skinPropertyLabel.frame.size.width / 2;
    
}

- (void)updateWithAvater:(UIImage *)avatar nickName:(NSString *)nickName skinProperty:(NSInteger)skinProperty gender:(BOOL)isMale age:(NSString *)age identity:(NSString *)identity commentCount:(NSInteger)commentCount approveCount:(NSInteger)approveCount {
    self.avatarImageView.image = avatar;
    self.nickNameLabel.text = nickName;
    switch (skinProperty) {
        case 0:
            self.skinPropertyLabel.text = @"干";
            break;
        case 1:
            self.skinPropertyLabel.text = @"油";
            break;
        default:
            self.skinPropertyLabel.text = @"混";
            break;
    }
    self.genderLabel.text = isMale ? @"男" : @"女";
    self.ageLabel.text = age;
    self.identityLabel.text = identity;
    self.commentCountLabel.text = [NSString stringWithFormat:@"%ld", (long)commentCount];
    self.approveCountLabel.text = [NSString stringWithFormat:@"%ld", (long)approveCount];

    [self setNeedsLayout];
    [self layoutIfNeeded];
}

- (CGFloat)heightOfCell {
    
    CGRect frame  = self.bottomLineView.frame;
    return frame.origin.y + self.frame.size.height;
}

- (CGSize)sizeOfCell {
    self.bounds = CGRectMake(0, 0, 320, self.frame.size.height);
    self.contentView.bounds = self.bounds;
    [self setNeedsLayout];
    [self layoutIfNeeded];
    NSLayoutConstraint *tempWidthConstraint =
    [NSLayoutConstraint constraintWithItem:self.commentLabel
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.0
                                  constant:[UIScreen screenWidth] / 2 - 24];
    [self.commentLabel addConstraint:tempWidthConstraint];
    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    [self.commentLabel removeConstraint:tempWidthConstraint];
    return size;
}

- (IBAction)onClickCommentButton:(id)sender {
    CGAffineTransform transform = commentTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.commentImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.commentImageView.transform = commentTransform;
        } completion:^(BOOL finished) {
            if ([self.delegate respondsToSelector:@selector(CommentCell:didClickCommentButtonWithTag:)]) {
                [self.delegate CommentCell:self didClickCommentButtonWithTag:0];
            }
        }];
    }];
}


- (IBAction)onClickApproveButton:(id)sender {
    CGAffineTransform transform = approveTransform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.approveImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.approveImageView.transform = approveTransform;
        } completion:^(BOOL finished) {
           NSInteger praiseCountLeft = [self.approveCountLabel.text integerValue];
           if (praiseCountLeft == 233) {
                self.approveCountLabel.text = @"234";
                self.approveImageView.image = [UIImage imageNamed:@"detail_approve_clicked_icon.png"];
                self.approveCountLabel.textColor = [UIColor colorFromHexCode:@"#EA5E42"];
            } else {
                self.approveCountLabel.text = @"233";
                self.approveImageView.image = [UIImage imageNamed:@"detail_approve_icon.png"];
                self.approveCountLabel.textColor = [UIColor grayColor];
            }
        }];
    }];
}

@end
