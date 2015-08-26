//
//  EarlyAdoptersTitleImageTableViewCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTitleImageTableViewCell.h"

@implementation EarlyAdoptersTitleImageTableViewCell

- (void)awakeFromNib {
    UIImage *image = [UIImage imageNamed:@"apply_head_product.png"];
    [self.titleImageView setImage:image];
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


- (void)startTimer {
    [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(timerFire) userInfo:nil repeats:YES];
}
- (void)timerFire {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setYear:2016];
    [components setMonth:9];
    [components setDay:30];
    [components setHour:12];
    [components setMinute:0];
    [components setSecond:0];
    NSDate *fireDate = [calendar dateFromComponents:components];//目标时间
    NSDate *today = [NSDate date];//当前时间
    unsigned int unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *d = [calendar components:unitFlags fromDate:today toDate:fireDate options:0];//计算时间差
    self.titltImageViewTimerLabel.text = [NSString stringWithFormat:@"%ld小时%ld分%ld秒",(long)[d hour], (long)[d minute], (long)[d second]];//倒计时显示
    
}
@end
