//
//  UIAlertView+Utility.m
//  ArchitectureProject
//
//  Created by chenao on 6/23/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "UIAlertView+Utility.h"

@implementation UIAlertView (Utility)

+ (void)showMessage:(NSString *)message {
    [[[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil] show];
}

@end
