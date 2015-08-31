//
//  HeaderViewCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/8/25.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "HeaderViewCell.h"
#import "SelectionView.h"
#import "UIScreen+Utility.h"
#import "MySegmentControl.h"
#define KScreenWidth [UIScreen mainScreen].bounds.size.width

@implementation HeaderViewCell

- (void)awakeFromNib {
    
    MySegmentControl *segment = [[MySegmentControl alloc]initWithFrame:CGRectMake(90, 10, [UIScreen screenWidth] - 200, 30)];
    [segment AddSegumentArray:[NSArray arrayWithObjects:@"所有的人",@"相近的人",nil]];
    [self addSubview:segment];
    SelectionView *selectionView = [SelectionView create];
    [self addSubview:selectionView];

    selectionView.frame = CGRectMake(40, 70, [UIScreen screenWidth] - 100, 25);
    
}


@end
