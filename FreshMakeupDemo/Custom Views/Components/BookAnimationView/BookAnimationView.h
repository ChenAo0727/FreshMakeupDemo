//
//  BookAnimationView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/26/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"

@interface BookAnimationView : AutoLayoutView

@property (weak, nonatomic) IBOutlet UIView *coverImageContainerView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverImageViewLeftContraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverImageViewRightContraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerViewBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerViewTopContraint;

- (void)animationOpenBookcompletion:(void (^)(BOOL finished))completion;
- (void)animationCloseBook;

@end
