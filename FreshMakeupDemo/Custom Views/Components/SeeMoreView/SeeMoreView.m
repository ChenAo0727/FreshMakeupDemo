//
//  SeeMoreView.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/27.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "SeeMoreView.h"
#import "UIColor+Utility.h"
@implementation SeeMoreView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
            UIView *sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 45)];
            UILabel *label = [[UILabel alloc] init];
            label.frame = CGRectMake(self.frame.size.width / 2 - 40, 5, 80, 30);
            label.textAlignment = NSTextAlignmentCenter;
            label.textColor = [UIColor colorFromHexCode:@"#9E9E9C"];
            label.text = @"往期新品";
            [sectionView setBackgroundColor:[UIColor whiteColor]];
            UILabel *lateLabel = [[UILabel alloc] init];
            lateLabel.frame = CGRectMake(self.frame.size.width / 2 - 100, 30, 200, 15);
            lateLabel.textAlignment = NSTextAlignmentCenter;
            lateLabel.text = @"2015年8月10日";
            lateLabel.textColor = [UIColor grayColor];
            lateLabel.font = [UIFont fontWithName:nil size:10];
            [sectionView addSubview:lateLabel];
        
            UIImageView *imageFooterLeftView = [[UIImageView alloc] initWithFrame:(CGRectMake(self.frame.size.width / 2 - 140, 22.5, 100, 1))];
            imageFooterLeftView.backgroundColor = [UIColor colorFromHexCode:@"#F2F2F2"];
            [sectionView addSubview:imageFooterLeftView];
            UIImageView *imageFooterRightView = [[UIImageView alloc] initWithFrame:(CGRectMake(self.frame.size.width / 2 + 40, 22.5, 100, 1))];
            imageFooterRightView.backgroundColor = [UIColor colorFromHexCode:@"#F2F2F2"];
            [sectionView addSubview:imageFooterRightView];
            [sectionView addSubview:label];
        [self addSubview:sectionView];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
