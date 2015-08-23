//
//  FindAutomatiRollingView.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/21.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FindAutomatiRollingView.h"

@implementation FindAutomatiRollingView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self imageData];
        self.imageViewTow.image = self.imageOne;
        self.imageViewThree.backgroundColor = [UIColor redColor];
        self.imageViewOne.backgroundColor = [UIColor yellowColor];
        self.imageViewTow.backgroundColor = [UIColor greenColor];
    }
    return self;
}
- (void)imageData {
    self.imageOne = [UIImage imageNamed:@"findad1.png"];
    self.imageTow = [UIImage imageNamed:@"findad2.jpg"];
    self.imageThree = [UIImage imageNamed:@"findad3.jpg"];
    self.imageFour = [UIImage imageNamed:@"findad4.jpg"];
}
- (void)findThreeDimensional {
    [UIView animateKeyframesWithDuration:2 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        [NSTimer scheduledTimerWithTimeInterval:16 target:self selector:@selector(findThreeDimensional) userInfo:nil repeats:YES];

    } completion:nil];
  
}
@end
