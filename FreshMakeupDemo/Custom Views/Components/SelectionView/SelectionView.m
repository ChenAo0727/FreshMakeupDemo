//
//  SelectionView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/24/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SelectionView.h"
#import "UIColor+Utility.h"

@implementation SelectionView {
    CGAffineTransform likeImageViewTransform;
}

+ (instancetype)create {
    SelectionView *selectionView = [[[NSBundle mainBundle] loadNibNamed:@"SelectionView" owner:nil options:nil] lastObject];
   selectionView.translatesAutoresizingMaskIntoConstraints = NO;
    return selectionView;
}

- (void)awakeFromNib {
    self.processView.layer.cornerRadius = 2;
    self.processView.layer.borderWidth = 0.5;
    self.processView.layer.borderColor = [[UIColor colorWithIntRed:196 green:132 blue:57] CGColor];
    likeImageViewTransform = self.selectionLikeImageView.transform;
    self.unlikeLineImageView.hidden = YES;
}

- (IBAction)onClickLeftButton:(id)sender {
    [self animateIfClickLikeImageView];
    NSInteger approveCount = [self.approveCountLabel.text integerValue];
    NSInteger disapproveCount = [self.disapproveCountLabel.text integerValue];
    [self animateUpdateWithLikeCount:(approveCount + 1) unlikeCount:disapproveCount];
    
}

- (IBAction)onClickRightButton:(id)sender {
    [self animateIfClickUnLikeImageView];
    NSInteger approveCount = [self.approveCountLabel.text integerValue];
    NSInteger disapproveCount = [self.disapproveCountLabel.text integerValue];
    [self animateUpdateWithLikeCount:approveCount unlikeCount:(disapproveCount + 1)];
}

- (void)animateUpdateWithLikeCount:(NSInteger)likeCount unlikeCount:(NSInteger)unlikeCount {
    [UIView animateWithDuration:0.2 animations:^{
        [self updateWithLikeCount:likeCount unlikeCount:unlikeCount];
    }];
}

- (void)updateWithLikeCount:(NSInteger)likeCount unlikeCount:(NSInteger)unlikeCount {
    if (likeCount == 0 && unlikeCount == 0) {
        self.processLeftViewWithConstraint.constant = self.processView.frame.size.width / 2;
    } else {
        self.processLeftViewWithConstraint.constant = self.processView.frame.size.width * (1.0 * likeCount / (likeCount + unlikeCount));
    }
    [self layoutIfNeeded];
    self.approveCountLabel.text = [NSString stringWithFormat:@"%ld", (long)likeCount];
    self.disapproveCountLabel.text = [NSString stringWithFormat:@"%ld", (long)unlikeCount];
    self.sumUserCountLabel.text = [NSString stringWithFormat:@"已有%ld用户参与", (likeCount + unlikeCount)];
}

- (void)animateIfClickUnLikeImageView {
    self.unLikeLineImageViewTopConstraint.constant = -10;
    self.unlikeLineImageView.hidden = NO;
    [self layoutIfNeeded];
    [UIView animateWithDuration:0.4 animations:^{
        self.unLikeLineImageViewTopConstraint.constant = 0;
        [self layoutIfNeeded];
    } completion:^(BOOL finished) {
        self.unlikeLineImageView.hidden = YES;
    }];
}

- (void)animateIfClickLikeImageView {
    [UIView animateWithDuration:0.1 animations:^{
        CGAffineTransform transform = CGAffineTransformScale(likeImageViewTransform, 1.2, 1.2);
        self.selectionLikeImageView.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.selectionLikeImageView.transform = likeImageViewTransform;
        } completion:^(BOOL finished) {
            [self animatieShakeLikeImageView];
        }];
    }];
}

- (void)animatieShakeLikeImageView {
    CABasicAnimation *shake = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    shake.fromValue = [NSNumber numberWithFloat: - M_PI / 32];
    shake.toValue = [NSNumber numberWithFloat: + M_PI / 32];
    shake.duration = 0.05;
    shake.autoreverses = YES;
    shake.repeatCount = 4;
    [self.selectionLikeImageView.layer addAnimation:shake forKey:@"shakeAnimation"];
}

@end
