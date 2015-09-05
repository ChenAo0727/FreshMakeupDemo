//
//  MySegmentControl.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/8/31.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "MySegmentControl.h"
@interface MySegmentControl ()<MyUISegmentedControlDelegate>
{
    CGFloat witdFloat;
    UIView* buttonDown;
    NSInteger selectSeugment;
}

@end

@implementation MySegmentControl
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
    
    self.ButtonArray=[NSMutableArray array];
    selectSeugment = 0;
    self.titleFont=[UIFont fontWithName:@".Helvetica Neue Interface" size:16.0f];
    self=[super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 34)];
    self.titleColor=[UIColor colorWithRed:161.0/255 green:155.0/255 blue:155.0/255 alpha:1.0f];
    self.selectColor=[UIColor colorWithRed:116.0/255 green:194.0/255 blue:189.0/255 alpha:1.0f];
    self.layer.borderWidth = 0.8;
        self.layer.borderColor = self.selectColor.CGColor;
    
    }
    return self;
    
}

- (void)AddSegumentArray:(NSArray *)SegumentArray {
    
    NSInteger seugemtNumber = SegumentArray.count;
    witdFloat = (self.bounds.size.width) / seugemtNumber;
    for (NSInteger i = 0; i < SegumentArray.count; i++) {
        UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(i*witdFloat, 0, witdFloat, self.bounds.size.height - 2)];
        [button setTitle:SegumentArray[i] forState:UIControlStateNormal];
        [button.titleLabel setFont:self.titleFont];
        [button setTitleColor:self.titleColor forState:UIControlStateNormal];
        [button setTitleColor:self.selectColor forState:UIControlStateSelected];
        [button setTag:i];
        [button addTarget:self action:@selector(changeTheSegument:) forControlEvents:UIControlEventTouchUpInside];
        if (i < SegumentArray.count - 1) {
            UIView *separateLine = [[UIView alloc]initWithFrame:CGRectMake((i +1) * witdFloat, 3, .8, self.bounds.size.height - 6)];
            separateLine.backgroundColor = self.selectColor;
            [self addSubview:separateLine];
        }
        if (i == 0) {
            buttonDown=[[UIView alloc]initWithFrame:CGRectMake(i*witdFloat, self.bounds.size.height - 2, witdFloat, 2)];
            [buttonDown setBackgroundColor:self.selectColor];
            [self addSubview:buttonDown];
        }
        
        [self addSubview:button];
        [self.ButtonArray addObject:button];
    }
    [[self.ButtonArray firstObject] setSelected:YES];
}

- (void)changeTheSegument:(UIButton*)button {
    
    [self selectTheSegument:button.tag];
    
}

- (void)selectTheSegument:(NSInteger)segument {
    
    if (selectSeugment != segument) {
        [self.ButtonArray[selectSeugment] setSelected:NO];
        [self.ButtonArray[segument] setSelected:YES];
        [UIView animateWithDuration:0.2 animations:^{
            [buttonDown setFrame:CGRectMake(segument * witdFloat,self.bounds.size.height - 2, witdFloat, 2)];
            buttonDown.backgroundColor = self.selectColor;
        }];
        selectSeugment = segument;
        [self.delegate segmentSelectionChange:selectSeugment];
    }
}

@end
