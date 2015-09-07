//
//  FreshSaleInfomationTool.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/7.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreshSaleInfomationTool.h"

@implementation FreshSaleInfomationTool
- (instancetype)initWithDALGCRInfomation {
    if (self = [super init]) {
      self.title = @"Dior Addict LIP GLOW COLOR REVIEW 自然魅惑润唇膏（珊瑚色)";
        self.price = @"165.15元";
        self.label = [NSMutableArray arrayWithObjects:@"润唇膏",@"addict dior", nil];
        self.image = [UIImage imageNamed:@"freshSale_DALGCR_image.png"];
        self.commentary = @"迪奥这支润唇膏可是偶化妆包的必备货，它可是会变色的润唇膏哦！采用神奇的高科技“水漾润色科技”，刚擦上时是无色透明的，但它可以立即感应双唇的含水量，渐变出适合使用者的不同的红润效果。内含天然植物红润成分，红润效果也应人而异，所以适合任何唇色的人使用，还有清凉感，用完非常清新、丰盈、透亮。这款唇膏除了我们能看到品牌大街小巷的广告之外，我还发现之前日本著名的超级平面模特藤井莉娜LENA也推荐过哦！她也是一直用这款。个人觉得，这款产品也算是Dior的代表作之一了，如果EL有小棕瓶，兰蔻有粉水，那就不得不提到Dior这款变色润唇膏了~这个牌子的介绍我就不多说，我想说现在这个价格买很划算，草莓网新推出了周末精选推广，迪奥、YSL、阿玛尼这三个牌子周末3天购买再额外9折，所以这款产品折弯只要￥165.15 （付款页面可见此价，新客免运费）淘宝价介乎185-200+不等";
        
    }
    return self;
}

- (instancetype)initWithClarisonicInfomation {
    if (self = [super init]) {
        self.title = @"Clarisonic 科莱丽 声波洁面仪（智能型)";
        self.price = @"1400";
        self.label = [NSMutableArray arrayWithObjects:@"洁面仪",@"声波洁面仪",@"Clarisonic", nil];
        self.image = [UIImage imageNamed:@"freshSale_Clarisonic_image.png"];
        self.commentary = @"科莱丽最新款，智能型，原价2000，现在购买输入340345可以同时使用9折优惠券，可以做到1400，除了套装自带的脸部和身体刷头外，还附送一个科莱丽面部刷头和足部2个刷头.";
        
    }
    return self;
}

- (instancetype)initWithLilyBellInfomation {
    if (self = [super init]) {
        self.title = @"Lily Bell 丽丽贝尔 化妆棉 222片 *5包装";
        self.price = @"44";
        self.label = [NSMutableArray arrayWithObjects:@"化妆棉",@"丽丽贝尔", nil];
        self.image = [UIImage imageNamed:@"freshSale_LilyBell_image.png"];
        self.commentary = @"丽丽贝尔 lilybell化妆棉222片 *5包装，包装收口设计方便卫生，纺织布设计，无掉渣现象，超级省水，只要一点点就可以滋润整个脸。网友普遍反映性价比超好，壹药网目前报价49元，使用5元券后http://quan.smzdm.com/content/6271，仅售44元包邮。有需要的朋友可以入手。";
    }
    return self;
}
@end
