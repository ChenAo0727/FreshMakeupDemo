//
//  BaseViewController.h
//  ArchitectureProject
//
//  Created by chenao on 6/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

+ (instancetype)create;

//- (void)toast:(NSString *)message complete:(MBProgressHUDCompletionBlock)complete;
- (void)addAutoDismissKeyboardGesture;

@end
