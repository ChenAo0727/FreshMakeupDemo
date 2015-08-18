//
//  FoundViewController+Configuration.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//
#define FOOTER_FRAME (CGRectMake(0, 386 + self.foundTableView.frame.size.height, self.foundTableView.frame.size.width, 70))

#import "FoundViewController.h"

@interface FoundViewController (Configuration)
- (void)configureViews;
@end
