//
//  ShakeAshakeView.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/31.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "AutoLayoutView.h"

@interface ShakeAshakeView : AutoLayoutView
@property (weak, nonatomic) IBOutlet UIImageView *shakeAshakeImaheView;
@property (assign, nonatomic) NSInteger shakeInteger;
- (void)shakeAshakeBefore;
- (void)shakeAshakeIn;
- (void)shakeAshakeAfter;
@end
