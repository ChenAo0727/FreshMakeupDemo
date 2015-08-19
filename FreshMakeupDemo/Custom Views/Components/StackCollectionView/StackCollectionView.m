//
//  StackCollectionView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/18/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "StackCollectionView.h"

@interface StackCollectionView ()

@property (nonatomic, assign) CGPoint panGestureStartLocation;
@property (nonatomic, assign) BOOL isInGestureAction;

@end

@implementation StackCollectionView

+ (id)create {
    StackCollectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"StackCollectionView" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

#pragma mark UIView Lifecycle 

- (void)awakeFromNib {
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

#pragma mark Get/Set Methods

- (void)setEnabled:(BOOL)enabled {
    _enabled = enabled;
    self.slideMotion.enabled = enabled;
}

@end
