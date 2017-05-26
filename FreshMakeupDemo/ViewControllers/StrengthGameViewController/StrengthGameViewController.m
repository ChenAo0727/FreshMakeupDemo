//
//  StrengthGameViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "StrengthGameViewController.h"

@interface StrengthGameViewController ()

@end

@implementation StrengthGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(strengthGameAction) userInfo:nil repeats:YES];
}

- (void)strengthGameAction {
    [UIView animateKeyframesWithDuration:1 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.strengthGramView.alpha = 0;
    } completion:nil];
}

- (IBAction)returnButtonAction:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}

@end
