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
- (instancetype)initWithBareMineralsInformation {
    if (self = [super init]) {
        
        self.title = @"BareMinerals睡眠粉—留宿必备";
        self.coverImage = [UIImage imageNamed:@"BareMinerals.png"];
        self.shortComment = @"睡觉也要涂粉？这是因为很多女孩子担心自己的素颜吓到男票，或是去朋友家留宿怕被发现皮肤差等等等。所以这款堪比护肤品的晚间睡眠粉便应运而生～全新突破夜间护理方式!";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Pure Transformation Night Treatment 夜间焕肤睡眠粉(去痘消炎、抗皱、嫩滑皮肤）规格：4.2g/0.15oz 产地：美国 质地：粉状 矿物护肤夜间护理的全新突破！采用活性配方，将72种有机矿物结合，持续作用于肌肤，不含防腐剂，对皮肤无刺激，适合包括敏感性肌肤在内的各种肤质。",@"text",@"BareMinerals.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"bareMinerals应该说是矿物护肤的始祖，而夜间焕肤睡眠粉则是他们家的最明星单品。没用过这款矿物睡眠粉的，都不好意思说自己真的跟矿物结缘过很久之前会注意到她是因为她一副彩妆的外表却是护肤的干活，分明就是望眼娇滴滴，转身却抬起煤气罐上6楼的女汉子！而且官网标明“永不过期！不需卸妆！不会堵塞毛孔的散粉”！戳！你这么强大又逆生长，散粉同胞们知道么？为你按赞按到死！！！！",@"text",@"BareMinerals.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithClearSkin{
    if (self = [super init]) {
        self.title = @"Help Clear Skin祛痘牛奶——喝出来的光滑肌肤";
        self.coverImage = [UIImage imageNamed:@"ClearSkin.png"];
        self.shortComment = @"提到拉杜丽laduree首先想到是他们家的马卡龙，但你知道它的彩妆同样出色吗？拉杜丽laduree和Albion合作推出的彩妆，几乎一夜之间，彩妆界人手几盒，甚至有人直接入了所有颜色！它的花瓣腮红，6克价格800多，号称彩妆里的“爱马仕”，如此高昂的价格还让这么多人趋之若鹜，到底好在哪里呢？";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"【商品名称】LADUREE拉杜丽 贵族玫瑰花瓣造型腮红修容【商品产地】日本【商品包装】盒装【适合肤质】所有肤质【商品色号】01、02、04",@"text",@"ClearSkin.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"",@"text",@"BareMinerals.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];

    }

    return self;
}
- (instancetype)initWithSisley{

    if (self = [super init]) {
        self.title = @"sisley 全新黑玫瑰珍宠滋养精华液";
        self.coverImage = [UIImage imageNamed:@"sisley.png"];
        self.shortComment = @"2015年夏，CPB肌肤之钥专业底妆又加入了话题性十足的新品光盈粉饼，将实现裸纱光钻，聚焦光采主角概念，使肌肤有如穿上薄纱光层般，创造前所未有的透明光泽感。YOKA评测中心对其进行了评测，看看其表现如何。";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"sisleyIntroduce.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"",@"text",@"sisleyFelling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
        
    }
    
    return self;

}

- (instancetype)initWithSK{

    if (self = [super init]) {
        self.title = @"SK-II全新 [超肌因] 逆龄系列新品发布";
        self.coverImage = [UIImage imageNamed:@"SK.png"];
        self.shortComment = @"有没有想过你的护肤品可以让你在任何年龄，任何角度看起来都一样年轻？SK-II启发自micro RNA科研，为你解开保持年轻美丽的神秘面纱。带来跨越未来的抗老修护科技，揭开肌肤保养的新一章。";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"SKIntroduce.png",@"image",@"http://static.video.qq.com/TPout.swf?vid=j0162if02fs&auto=0",@"video", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @" “我觉得超肌因系列的精华质地很薄透，面霜很丰盈，非常细腻，容易吸收，使用感受我觉得甚至比之前的大小红瓶更加好。” ——游丝祺",@"text",@"SKFelling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
        
    }
    
    return self;

}

- (instancetype)initWithLanZhi{
    
    if (self = [super init]) {
        self.title = @"兰芝遇见时尚定制版BB霜";
        self.coverImage = [UIImage imageNamed:@"LanZhi.png"];
        self.shortComment = @"源自韩国第一大化妆品集团爱茉莉太平洋顶尖科技，横扫多项美妆大奖";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"LanZhiIntroduce.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"",@"text",@"LanZhiFelling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
        
    }
    
    return self;

}

- (instancetype)initWithAupres{

    if (self = [super init]) {
        self.title = @"欧珀莱 全新时光锁紧致塑颜系列";
        self.coverImage = [UIImage imageNamed:@"Aupres.png"];
        self.shortComment = @"欧珀莱时光锁紧实弹润系列抗皱精萃眼霜就能很好滴满足上述要求，让Q弹媚眼再生 小P老师可是倾情推荐这款眼霜哦";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"AupresIntroduce.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"",@"text",@"AupresFelling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
        
    }
    
    return self;
    



}
@end
