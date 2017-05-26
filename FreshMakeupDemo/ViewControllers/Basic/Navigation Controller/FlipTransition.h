//
//  FlipTransition.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/28/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlipTransition : NSObject<UIViewControllerAnimatedTransitioning>

@property (getter=isReverse) BOOL reverse;
@property (strong, nonatomic) UIImage *image;

@end
