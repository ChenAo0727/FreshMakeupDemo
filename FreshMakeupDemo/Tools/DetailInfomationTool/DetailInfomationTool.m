//
//  DetailInfomationTool.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailInfomationTool.h"

@implementation DetailInfomationTool

- (instancetype)initWithYaDunInfomation {
    if (self = [super init]) {
      self.title = @"拯救压力初老肌 雅顿无瑕未来微胶囊全新上市";
      self.coverImage = [UIImage imageNamed:@"freash_sale_title_image.jpg"];
        self.shortComment = @"跨入的2015年，工作越来越忙，是种忙不停歇的节奏，每日里最为感慨的就是时间不够用不够用，在一步一步迈向职场精英的同时，也愈加体会了随之而来的压力.                                                                                                         让我感受最为明显的即是我的皮肤，每天远超8小时的办公，密闭空间，电脑辐射，还有因各种压力带来的疲倦，走向成熟不再青春的肌肤需要能量，抗老的步调走起~";
       NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"freash_sale_title_image.jpg",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"用起这个新收回的雅顿无瑕未来系列,对于雅顿，这个陪伴我多年的小伙伴，对它的好感是源源不断。从早先的8小时保湿到21天显效霜再到逆时空胶囊，算得上一步一个脚印见证了它的好用!",@"text",@"freash_sale_title_image.jpg",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
@end
