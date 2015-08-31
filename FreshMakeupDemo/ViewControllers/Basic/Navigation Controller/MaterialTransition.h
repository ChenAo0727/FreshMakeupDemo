//
//  MaterialTransition.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/27/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface MaterialTransition : NSObject<UIViewControllerAnimatedTransitioning>

@property (getter=isReverse) BOOL reverse;
@property (nonatomic) CGRect startFrame;
@end
