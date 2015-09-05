//
//  EvaluationCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/5.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EvaluationCell.h"
#import "UIScreen+Utility.h"

@implementation EvaluationCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor whiteColor];
     self.mySegmentControl = [[MySegmentControl alloc]initWithFrame:CGRectMake(([UIScreen screenWidth] - 220) / 2, 45, 220, 26)];
    [self.mySegmentControl AddSegumentArray:[NSArray arrayWithObjects:@"所有的人",@"相近的人",nil]];
    [self addSubview:self.mySegmentControl];
}

@end
