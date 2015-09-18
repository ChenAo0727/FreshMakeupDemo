//
//  FreshSaleInfomationTool.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/7.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreshSaleInfomationTool.h"
#import "CommentInfomationTool.h"

@implementation FreshSaleInfomationTool
- (instancetype)initWithDALGCRInfomation {
    if (self = [super init]) {
      self.title = @"Dior 自然魅惑润唇膏（珊瑚色)";
        self.comments = [CommentInfomationTool ladureeCommentArray];
        self.price = @"165.15";
        self.priceImage = [UIImage imageNamed:@"dior_price_image"];
        self.labelArray = [NSMutableArray arrayWithObjects:@"润唇膏",@"addict dior", nil];
        self.image = [UIImage imageNamed:@"freshSale_DALGCR_image.png"];
        self.commentary = @"    迪奥这支润唇膏可是偶化妆包的必备货，它可是会变色的润唇膏哦！采用神奇的高科技“水漾润色科技”，刚擦上时是无色透明的，但它可以立即感应双唇的含水量，渐变出适合使用者的不同的红润效果。内含天然植物红润成分，红润效果也应人而异，所以适合任何唇色的人使用，还有清凉感，用完非常清新、丰盈、透亮。这款唇膏除了我们能看到品牌大街小巷的广告之外，我还发现之前日本著名的超级平面模特藤井莉娜LENA也推荐过哦！她也是一直用这款。个人觉得，这款产品也算是Dior的代表作之一了，如果EL有小棕瓶，兰蔻有粉水，那就不得不提到Dior这款变色润唇膏了~这个牌子的介绍我就不多说，我想说现在这个价格买很划算，草莓网新推出了周末精选推广，迪奥、YSL、阿玛尼这三个牌子周末3天购买再额外9折，所以这款产品折弯只要￥165.15 （付款页面可见此价，新客免运费）淘宝价介乎185-200+不等";
        
    }
    return self;
}

- (instancetype)initWithMISSHA{
    if (self = [super init]) {
        self.title = @"谜尚 魅力莹润无暇气垫粉凝霜 21号";
        self.comments = [CommentInfomationTool ladureeCommentArray];
        self.price = @"49";
        self.priceImage = [UIImage imageNamed:@"mishang_price_image"];
        self.labelArray = [NSArray arrayWithObjects:@"MISSHA",@"谜尚",@"BB霜", @"魅力莹润无暇", nil];
        self.image = [UIImage imageNamed:@"freshSale_MISSHA_image"];
        self.commentary = @"    MISSHA谜尚是韩国三大化妆品集团之一ABLE C&C株式会社旗下的品牌，这款MISSHA 谜尚魅力莹润无暇气垫粉凝霜，粉体细腻，有遮瑕功效，涂抹后自然清新，能够吸收汗水和皮脂，淡化暗沉，同时使妆容更持久，补妆不会让底妆结块，含有金缕梅等提取物，同时能够补充水分舒缓肌肤。\n京东目前售价49元，且可参加满199减40活动，合理凑单可以低至40元左右，近期好价，其他渠道售价80元以上。建议与活动产品一起凑单带回，或者组团拼单也不错";
    }
        return self;
}

- (instancetype)initWithBIODERMA{
    if (self = [super init]) {
        
    self.title = @"贝德码 舒妍温和保湿卸妆水500ml";
    self.comments = [CommentInfomationTool ladureeCommentArray];
    self.price = @"99";
    self.priceImage = [UIImage imageNamed:@"bioderma_price_image"];
    self.labelArray = [NSArray arrayWithObjects:@"卸妆水",@"保湿卸妆水",@" 舒妍温和",@"贝德玛",nil];
    self.image = [UIImage imageNamed:@"freshSale_BIODERMA_image"];
    self.commentary = @"    1号店148元。蓝色款适合油性混合皮肤用，快速卸妆，深层洁净。明星、美妆达人的御用卸妆品牌，没有卸妆油的油腻，轻轻一抹，立见干净，身边的妹子都在用的卸妆水.";
    }
    return self;
}

- (instancetype)initWithPanasonic{
    if (self = [super init]) {
        
        self.title = @"松下 EH-SA31-P离子蒸汽美容器";
        self.comments = [CommentInfomationTool ladureeCommentArray];
        self.price = @"349";
        self.priceImage = [UIImage imageNamed:@"panasonic_price_image"];
        self.labelArray = [NSArray arrayWithObjects:@"Panasonic",@"松下",@"EH-SA31-P离子蒸汽美容器",nil];
        self.image = [UIImage imageNamed:@"freshSale_Panasonic_image"];
        self.commentary = @"    这款蒸脸器不用多说了，很多值友推荐过了，补水做面膜治鼻塞效果显著。目前苏宁手机客户端只需要349，属于历史低价了，有需要的值友可以入。";
    }
    return self;
}

- (instancetype)initWithClarisonicInfomation {
    if (self = [super init]) {
        self.title = @"科莱丽 声波洁面仪（智能型)";
        self.comments = [CommentInfomationTool ladureeCommentArray];
        self.price = @"1400";
        self.priceImage = [UIImage imageNamed:@"clarisonic_price_image"];
        self.labelArray = [NSMutableArray arrayWithObjects:@"洁面仪",@"声波洁面仪",@"Clarisonic", nil];
        self.image = [UIImage imageNamed:@"freshSale_Clarisonic_image.png"];
        self.commentary = @"    科莱丽最新款，智能型，原价2000，现在购买输入340345可以同时使用9折优惠券，可以做到1400，除了套装自带的脸部和身体刷头外，还附送一个科莱丽面部刷头和足部2个刷头.";
    
    }
    return self;
}

- (instancetype)initWithLilyBellInfomation {
    if (self = [super init]) {
        self.title = @"Lily Bell 丽丽贝尔 化妆棉 222片 *5包装";
        self.comments = [CommentInfomationTool ladureeCommentArray];
        self.price = @"44";
        self.priceImage = [UIImage imageNamed:@"lily_bell_price_image"];
        self.labelArray = [NSMutableArray arrayWithObjects:@"化妆棉",@"丽丽贝尔", nil];
        self.image = [UIImage imageNamed:@"freshSale_LilyBell_image.png"];
        self.commentary = @"    丽丽贝尔 lilybell化妆棉222片 *5包装，包装收口设计方便卫生，纺织布设计，无掉渣现象，超级省水，只要一点点就可以滋润整个脸。网友普遍反映性价比超好，壹药网目前报价49元，使用5元券后http://quan.smzdm.com/content/6271，仅售44元包邮。有需要的朋友可以入手。";
    }
    return self;
}
@end
