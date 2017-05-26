//
//  FoundViewController+Configuration.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 chenao. All rights reserved.
//
#define FOOTER_FRAME (CGRectMake(0, 386 + self.findTableView.frame.size.height, self.findTableView.frame.size.width, 70))

#import "FindViewController.h"

@interface FindViewController (Configuration)
- (void)getScreenWidth;
- (void)configureViews;
@end
