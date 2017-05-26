//
//  TrialInfomationTool.m
//  FreshMakeupDemo
//
//  Created by chenao on 9/9/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "TrialInfomationTool.h"

@implementation TrialInfomationTool

+ (instancetype)createWithAvatar:(UIImage *)avatar nickName:(NSString *)nickName time:(NSString *)time coverImage:(UIImage *)coverImage description:(NSString *)description {
    TrialInfomationTool *trialInfomationTool = [[TrialInfomationTool alloc] init];
    trialInfomationTool.avatar = avatar;
    trialInfomationTool.nickName = nickName;
    trialInfomationTool.time = time;
    trialInfomationTool.coverImage = coverImage;
    trialInfomationTool.descriptionText = description;
    return trialInfomationTool;
}

+ (NSArray *)ladureeTrialArray {
    return @[[TrialInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image1.jpg"] nickName:@"四方" time:@"5分钟前" coverImage:[UIImage imageNamed:@"product_trial_image_ldl1.jpg"] description:@"本人23岁，平时会化个眼线刷个睫毛，以前也不用腮红，这次抱着试试看的态度申请了laduree的这款腮红，没想到就通过了呢。"],
             [TrialInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image2.jpg"] nickName:@"泽北" time:@"刚刚" coverImage:[UIImage imageNamed:@"product_trial_image_ldl2.jpg"] description:@"虽然是第一次使用laduree蝶恋玫瑰腮红，但效果确实不错，方便携带，而且比我之前购买的粉末状的腮红好用。朋友们如果需要购买腮..."],
             [TrialInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image3.jpg"] nickName:@"折木" time:@"6分钟前" coverImage:[UIImage imageNamed:@"product_trial_image_ldl3.jpg"] description:@"哎呀哎呀，由于本人元旦回家了，来回好几天又加上考试，试用报告撰写晚了，所以赶紧来补上，本人平时化妆还没大用过腮红"],
             [TrialInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image4.jpg"] nickName:@"嘉和" time:@"30秒前" coverImage:[UIImage imageNamed:@"product_trial_image_ldl4.jpg"] description:@"laduree 玫瑰腮红，卖家很负责，包装认真，收到宝贝完好无损 腮红盒做工很好，外形很漂亮，超喜欢。 很喜欢..."]];
}

@end
