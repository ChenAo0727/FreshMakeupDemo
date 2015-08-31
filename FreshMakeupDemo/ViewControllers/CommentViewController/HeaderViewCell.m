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
#define KScreenWidth [UIScreen mainScreen].bounds.size.width

@implementation HeaderViewCell

- (void)awakeFromNib {
    
    SelectionView *selectionView = [SelectionView create];
    [self addSubview:selectionView];

    selectionView.frame = CGRectMake(40, 85, [UIScreen screenWidth] - 100, 54);


}

@end
