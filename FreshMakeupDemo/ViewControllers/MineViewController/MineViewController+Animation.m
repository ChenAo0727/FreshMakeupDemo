//
//  MineViewController+Animation.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/21.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "MineViewController+Animation.h"
#import "MineTableViewCell.h"
@implementation MineViewController (Animation)
- (void)guideViewAnimation:(NSInteger)integer {
    [UIView animateKeyframesWithDuration:0.2 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.mineGuideimageView.center = (CGPoint){4, self.mineGuideView.frame.size.height + 40 * integer  + 20};
    } completion:nil];
   
}
- (void)mineLabelAnimation {
    for (NSInteger i = 0; i < 5; i++) {
        MineTableViewCell *cell = (MineTableViewCell *)[self.mineTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        [cell animateToShowLabel:i];
    }
   
}

@end
