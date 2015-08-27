//
//  BookAnimationView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/26/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BookAnimationView.h"
#import "UIScreen+Utility.h"

@implementation BookAnimationView {
    CATransform3D originTransform;
    CATransform3D backgroundTransform;
}

+ (instancetype)create {
    BookAnimationView *bookAnimationView = [[[NSBundle mainBundle] loadNibNamed:@"BookAnimationView" owner:nil options:nil] lastObject];
    bookAnimationView.translatesAutoresizingMaskIntoConstraints = NO;
    return bookAnimationView;
}

- (void)animationOpenBookcompletion:(void (^)(BOOL finished))completion {
    CATransform3D transfrom = originTransform;
    transfrom.m34 = 1.0 / 1000;
    transfrom = CATransform3DRotate(transfrom, M_PI / 2, 0 , 1, 0);
    [UIView animateWithDuration:0.5 animations:^{
        self.coverImageView.layer.transform = transfrom;
        self.containerViewTopContraint.constant = 0;
        self.containerViewBottomConstraint.constant = 0;
        [self layoutIfNeeded];
        self.coverImageViewLeftContraint.constant = - self.coverImageContainerView.frame.size.width / 2;
        self.coverImageViewRightContraint.constant = self.coverImageContainerView.frame.size.width / 2;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animationCloseBook {
    [UIView animateWithDuration:1 animations:^{
        self.coverImageView.layer.transform = originTransform;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)awakeFromNib {
    self.coverImageViewLeftContraint.constant = - self.coverImageContainerView.frame.size.width / 2;
    self.coverImageViewRightContraint.constant = self.coverImageContainerView.frame.size.width / 2;
    self.coverImageView.layer.anchorPoint = CGPointMake(0.0, 0.5);
    originTransform = self.coverImageView.layer.transform;
    backgroundTransform = self.backgroundView.layer.transform;
}

@end
