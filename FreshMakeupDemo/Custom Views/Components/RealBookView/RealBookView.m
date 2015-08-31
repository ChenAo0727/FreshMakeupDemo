//
//  RealBookView.m
//  RealBookDemo
//
//  Created by guoshencheng on 8/28/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "RealBookView.h"
#import "UIScreen+Utility.h"

@implementation RealBookView {
    CATransform3D originTransform;
}

+ (instancetype)create {
    return [[[NSBundle mainBundle] loadNibNamed:@"RealBookView" owner:nil options:nil] lastObject];
}

- (void)awakeFromNib {
    originTransform = self.coverContainerView.layer.transform;
    [self addBottomShadow];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClickViewButton:)];
    [self addGestureRecognizer:tap];
}

- (void)addBottomShadow {
    self.backgroundContanerView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.backgroundContanerView.layer.shadowOffset = CGSizeMake(0,10);
    self.backgroundContanerView.layer.shadowOpacity = 0.3;
    self.backgroundContanerView.layer.shadowRadius = 10;
}

- (IBAction)onClickViewButton:(id)sender {
    if (self.didSelectCellBllock) {
        self.didSelectCellBllock(self);
    }
}

- (void)updateToOpenBookStatus {
    self.coverViewLeftConstraint.constant = -self.coverContainerView.frame.size.width / 2 - ([UIScreen screenWidth] - self.backgroundContanerView.frame.size.width) / 2;
    self.coverViewRightConstraint.constant = self.coverContainerView.frame.size.width / 2 + ([UIScreen screenWidth] - self.backgroundContanerView.frame.size.width) / 2;
    self.nextViewBottomConstraint.constant = -65;
    self.nextViewTopConstraint.constant = -91;
    self.nextViewLeftConstraint.constant = -([UIScreen screenWidth] - self.backgroundContanerView.frame.size.width) / 2;
    self.nextViewRightConstraint.constant = -([UIScreen screenWidth] - self.backgroundContanerView.frame.size.width) / 2;
    [self layoutIfNeeded];
    CATransform3D transfrom = originTransform;
    transfrom.m34 = 1.0 / 1000;
    //transfrom = CATransform3DTranslate(transfrom, -([UIScreen screenWidth] - self.coverContainerView.frame.size.width) / 2, 0, 0);
    transfrom = CATransform3DRotate(transfrom, M_PI / 2, 0 , 1, 0);
    transfrom = CATransform3DScale(transfrom, [UIScreen screenWidth] / self.coverContainerView.frame.size.width, [UIScreen screenHeight] / self.coverContainerView.frame.size.height * 1.1, 1);
    self.coverContainerView.layer.transform = transfrom;
}

- (void)updateToCloseBookStatus {
    self.coverContainerView.layer.transform = originTransform;
}

- (void)animationToOpenBookWithCompletion:(void (^)(BOOL finished))completion  {
    self.coverContainerView.layer.anchorPoint = CGPointMake(0, 0.5);
    self.coverViewLeftConstraint.constant = -self.coverContainerView.frame.size.width / 2;
    self.coverViewRightConstraint.constant = self.coverContainerView.frame.size.width / 2;
    [self layoutIfNeeded];
    [UIView animateWithDuration:0.5 animations:^{
        [self updateToOpenBookStatus];
    } completion:^(BOOL finished) {
        self.coverContainerView.layer.anchorPoint = CGPointMake(0.5, 0.5);
        completion(finished);
    }];
}

- (void)animationToCloseBookWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:1 animations:^{
        [self updateToCloseBookStatus];
    }];
}

@end
