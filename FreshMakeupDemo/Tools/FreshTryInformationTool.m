//
//  FreshTryInformationTool.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/7.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreshTryInformationTool.h"

@implementation FreshTryInformationTool

- (instancetype)initWithDanceLegend {

    if (self = [super init]) {
        self.image = [UIImage imageNamed:@"Dance_Legend"];
        self.title = @"Dance Legend 星空限量版指甲油";
        self.shortComment = @"浩瀚的星空，绚烂的色彩，不同角度折射 不同颜色，独一无二的美甲体验，仅此一家！";
    }
    return self;
}

- (instancetype)initWithForBeloveOne {

    if (self = [super init]) {
        self.image = [UIImage imageNamed:@"For_Belove_One"];
        self.title = @"宠爱之名舒缓卸妆液";
        self.shortComment = @"全新洁淨科技Double GX水合淨肤因子， 能深入脸部毛孔，溶解粉底及彩粧，轻轻 一擦，瞬间带走油脂彩妆。";

    }

    return self;
}

- (instancetype)initWithMAYSU {

    if (self = [super init]) {
        
        self.image = [UIImage imageNamed:@"MAYSU"];
        self.title = @"美素精华瑰蜜露";
        self.shortComment = @"发现“玫瑰+蜂蜜”的蜜养力量蜜养出饱 满、细腻、红润的东方美肌，让现代女性 之美华彩绽放！";
        
    }
    return self;

}

- (instancetype)initWithBOBBI {

    if (self = [super init]) {
        self.image = [UIImage imageNamed:@"BOBBI_BROWN"];
        self.title = @"芭比波朗舒盈平衡粉底露";
        self.shortComment = @"打造零负担无痕空气感裸妆，塑造完美肌 肤质感。持久抗氧化配方，保持妆容清新 不易脱妆。";
    }
    return self;

}
- (instancetype)initWithJurlique {

    if (self = [super init]) {
        self.image = [UIImage imageNamed:@"Jurlique"];
        self.title = @"茱莉蔻 2015限量玫瑰花卉水";
        self.shortComment = @"保湿，润泽，防护 如雨露般轻盈甘醇的 玫瑰花水，采撷珍稀玫瑰萃取及草本植物 精华，瞬间为肌肤带来水漾清新。";
        
    }
    return self;

}
@end
