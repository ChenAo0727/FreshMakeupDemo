//
//  WorthSlideView.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/2/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "WorthSlideView.h"
#import "UIScreen+Utility.h"

@implementation WorthSlideView {
    CGFloat lastCarViewConstraint;
}

- (void)updateWithPrice:(NSString *)price worthCount:(NSInteger)worthCount NotWorthCount:(NSInteger)NotWorthCount {
    self.priceLabel.text = [NSString stringWithFormat:@"￥%@", price];
}

+ (instancetype)create {
    WorthSlideView *worthSlideView = [[[NSBundle mainBundle] loadNibNamed:@"WorthSlideView" owner:nil options:nil] lastObject];
    worthSlideView.translatesAutoresizingMaskIntoConstraints = NO;
    return worthSlideView;
}

- (void)awakeFromNib {
    self.processView.layer.cornerRadius = self.processView.frame.size.height / 2;
    [self updateCarToDefaultPostion];
    [self configureSlideMotion];
}

- (void)configureSlideMotion {
    self.slideMotion = [SlideMotion new];
    self.slideMotion.direction = SlideMotionDirectionHorizontal;
    self.slideMotion.delegate = self;
    self.slideMotion.dataSource = self;
    [self.slideMotion attachToView:self.carView];
}

- (void)updateCarToDefaultPostion {
    self.carViewRightConstraint.constant = ([UIScreen screenWidth] - self.carView.frame.size.width) / 2 - 52;
    [self layoutIfNeeded];
}

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self;
}

- (void)slideMotion:(SlideMotion *)slideMotion didBeginSlideView:(UIView *)view {
    lastCarViewConstraint = self.carViewRightConstraint.constant;
}

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    if (lastCarViewConstraint - offset < 0) {
        self.carViewRightConstraint.constant = 0;
    } else if (self.processView.frame.size.width - self.carView.frame.size.width < lastCarViewConstraint - offset) {
        self.carViewRightConstraint.constant = self.processView.frame.size.width - self.carView.frame.size.width;
    } else {
        self.carViewRightConstraint.constant = lastCarViewConstraint - offset;
    }
    [self layoutIfNeeded];
}

- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    if (0 == self.carViewRightConstraint.constant) {
        [self creaseAnimationBehind:self.notWorthCountLabel completion:^(BOOL finished) {
            self.notWorthCountLabel.text = [NSString stringWithFormat:@"%@", @(1 + [self.notWorthCountLabel.text integerValue])];
        }];
    } else if (self.carViewRightConstraint.constant == self.processView.frame.size.width - self.carView.frame.size.width) {
        [self creaseAnimationBehind:self.worthCountLabel completion:^(BOOL finished) {
            self.worthCountLabel.text = [NSString stringWithFormat:@"%@", @(1 + [self.worthCountLabel.text integerValue])];
        }];
    }
    [UIView animateWithDuration:0.2 animations:^{
        [self updateCarToDefaultPostion];
    } completion:^(BOOL finished) {
    }];
}

- (void)creaseAnimationBehind:(UIView *)view completion:(void (^)(BOOL finished))completion{
    UILabel *targetLabelView = (UILabel *)view;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y + CGRectGetHeight(view.frame), 15, 15)];
    [view.superview addSubview: label];
    label.text = @"+1";
    label.textColor = targetLabelView.textColor;
    label.textAlignment = NSTextAlignmentCenter;
    [UIView animateWithDuration:1 animations:^{
        label.transform = CGAffineTransformScale(label.transform, 1.5, 1.5);
        label.alpha = 0;
    } completion:^(BOOL finished) {
        [label removeFromSuperview];
        completion(finished);
    }];
}


@end
