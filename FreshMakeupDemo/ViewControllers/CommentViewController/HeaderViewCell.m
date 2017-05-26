//
//  HeaderViewCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/8/25.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "HeaderViewCell.h"
#import "SelectionView.h"
#import "UIScreen+Utility.h"
#import "MySegmentControl.h"

@implementation HeaderViewCell

- (void)awakeFromNib {
    MySegmentControl *segment = [[MySegmentControl alloc]initWithFrame:CGRectMake(70, 10,[UIScreen screenWidth] - 160, 30)];
    [segment AddSegumentArray:[NSArray arrayWithObjects:@"所有的人",@"相近的人",nil]];
    [self addSubview:segment];
    SelectionView *selectionView = [SelectionView create];
    [self.contentView addSubview:selectionView];
    [selectionView setLeftSpace:0];
    [selectionView setRightSpace:0];
    [selectionView setTopSpace:60];
    [selectionView setHeightConstant:54];
    [self layoutIfNeeded];
}

+ (instancetype)create{
    return [[[NSBundle mainBundle]loadNibNamed:HEADCELL owner:nil options:nil] lastObject];
}
@end
