//
//  WorthSlideView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "WorthSlideView.h"

@implementation WorthSlideView

+ (instancetype)create {
    WorthSlideView *worthSlideView = [[[NSBundle mainBundle] loadNibNamed:@"WorthSlideView" owner:nil options:nil] lastObject];
    worthSlideView.translatesAutoresizingMaskIntoConstraints = NO;
    return worthSlideView;
}

@end
