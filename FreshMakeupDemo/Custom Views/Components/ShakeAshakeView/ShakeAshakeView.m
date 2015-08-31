//
//  ShakeAshakeView.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/31.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "ShakeAshakeView.h"

@implementation ShakeAshakeView
+ (id)create {
    ShakeAshakeView *view = [[[NSBundle mainBundle] loadNibNamed:@"ShakeAshakeView" owner:nil options:nil] lastObject];
    return view;
}
- (void)awakeFromNib {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    
}
- (void)shakeAshakeBefore {
    [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.shakeAshakeImaheView.frame = CGRectMake(self.frame.size.width / 2 - 40, 280, 80, 50);
        self.shakeInteger = (arc4random() % 2) + 1;
    } completion:nil];
}
- (void)shakeAshakeIn {
    [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.shakeAshakeImaheView.image = [UIImage imageNamed:@"shakeaShake.png"];
        self.shakeAshakeImaheView.frame = CGRectMake(0, 200, self.frame.size.width, 200);
    } completion:nil];
}
- (void)shakeAshakeAfter {
    if (self.shakeInteger == 2) {
        self.shakeAshakeImaheView.image = [UIImage imageNamed:@"last.png"];
    } else {
        self.shakeAshakeImaheView.image = [UIImage imageNamed:@"underthe.png"];
    }
    
    [UIView animateKeyframesWithDuration:0.4 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
            self.shakeAshakeImaheView.frame = CGRectMake(0, 200, self.frame.size.width, 200);
    } completion:nil];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
