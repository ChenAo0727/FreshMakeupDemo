//
//  FreshSaleInfomationTool.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/7.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreshSaleInfomationTool.h"

@implementation FreshSaleInfomationTool

- (instancetype)initWithMISSHA{
    if (self = [super init]) {
        
        self.title = @"MISSHA 谜尚 魅力莹润无暇气垫粉凝霜 21号";
        self.price = @"49";
        self.label = [NSArray arrayWithObjects:@"MISSHA",@"谜尚",@"BB霜", @"魅力莹润无暇", nil];
        self.image = [UIImage imageNamed:@"MISSHA"];
        self.commentary = @"MISSHA谜尚是韩国三大化妆品集团之一ABLE C&C株式会社旗下的品牌，这款MISSHA 谜尚魅力莹润无暇气垫粉凝霜，粉体细腻，有遮瑕功效，涂抹后自然清新，能够吸收汗水和皮脂，淡化暗沉，同时使妆容更持久，补妆不会让底妆结块，含有金缕梅等提取物，同时能够补充水分舒缓肌肤。\n京东目前售价49元，且可参加满199减40活动，合理凑单可以低至40元左右，近期好价，其他渠道售价80元以上。建议与活动产品一起凑单带回，或者组团拼单也不错";
    }

    return self;
}

- (instancetype)initWithBIODERMA{
    if (self = [super init]) {
        
    self.title = @"舒妍温和保湿卸妆水500ml";
    self.price = @"99";
    self.label = [NSArray arrayWithObjects:@"卸妆水",@"保湿卸妆水",@" 舒妍温和",@"贝德玛",nil];
    self.image = [UIImage imageNamed:@"BIODERMA"];
    self.commentary = @"1号店148元。蓝色款适合油性混合皮肤用，快速卸妆，深层洁净。明星、美妆达人的御用卸妆品牌，没有卸妆油的油腻，轻轻一抹，立见干净，身边的妹子都在用的卸妆水.";
}

return self;

}
- (instancetype)initWithPanasonic{
    if (self = [super init]) {
        
        self.title = @"Panasonic 松下 EH-SA31-P离子蒸汽美容器";
        self.price = @"349";
        self.label = [NSArray arrayWithObjects:@"Panasonic",@"松下",@"EH-SA31-P离子蒸汽美容器",nil];
        self.image = [UIImage imageNamed:@"Panasonic"];
        self.commentary = @"这款蒸脸器不用多说了，很多值友推荐过了，补水做面膜治鼻塞效果显著。目前苏宁手机客户端只需要349，属于历史低价了，有需要的值友可以入。";
    }
    
    return self;



}

@end
