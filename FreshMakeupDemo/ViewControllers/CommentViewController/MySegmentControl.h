//
//  MySegmentControl.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/8/31.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyUISegmentedControlDelegate<NSObject>
@optional
- (void)segmentSelectionChange:(NSInteger)selection;
@end
@interface MySegmentControl : UIView

@property (weak, nonatomic) id <MyUISegmentedControlDelegate>delegate;
@property (strong, nonatomic) NSMutableArray* ButtonArray;

@property (strong, nonatomic) UIColor* titleColor;
@property (strong, nonatomic) UIColor* selectColor;
@property (strong, nonatomic) UIFont* titleFont;
- (void)AddSegumentArray:(NSArray *)SegumentArray;
- (instancetype)initWithFrame:(CGRect)frame;
- (void)selectTheSegument:(NSInteger)segument;

@end
