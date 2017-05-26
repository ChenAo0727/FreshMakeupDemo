//
//  XHZoomDrawerView.h
//  XHDrawerController
//
//  Created by chenao on 14-12-27.
//  Copyright (c) chenao. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface XHZoomDrawerView : UIView

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) UIView *contentContainerView;
@property (nonatomic, strong) UIView *leftContainerView;
@property (nonatomic, strong) UIButton *contentContainerButton;
@end
