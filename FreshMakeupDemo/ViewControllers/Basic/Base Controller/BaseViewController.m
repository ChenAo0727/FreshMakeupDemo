//
//  BaseViewController.m
//  ArchitectureProject
//
//  Created by chenao on 6/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

+ (instancetype)create {
    NSAssert(false, @"-base view controller should never be created without subclass");
    return nil;
}

- (void)viewDidLoad {

    
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
#pragma mark Public Methods
- (void)addAutoDismissKeyboardGesture {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(autoDismissKeyboardGestureAction:)];
    NSOperationQueue *mainQuene =[NSOperationQueue mainQueue];
    
    // add Gesture
    [notificationCenter addObserverForName:UIKeyboardWillShowNotification
                                    object:nil
                                     queue:mainQuene
                                usingBlock:^(NSNotification *note){
                                    [self.view addGestureRecognizer:singleTapGesture];
                                }];
    
    // remove Gesture
    [notificationCenter addObserverForName:UIKeyboardWillHideNotification
                                    object:nil
                                     queue:mainQuene
                                usingBlock:^(NSNotification *note){
                                    [self.view removeGestureRecognizer:singleTapGesture];
                                }];
}

#pragma mark Private Methods

- (void)autoDismissKeyboardGestureAction:(UIGestureRecognizer *)gestureRecognizer {
    [self.view endEditing:YES];
}

@end
