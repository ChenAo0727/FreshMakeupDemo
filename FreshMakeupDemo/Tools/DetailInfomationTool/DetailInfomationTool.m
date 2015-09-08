//
//  DetailInfomationTool.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailInfomationTool.h"

@implementation DetailInfomationTool

- (instancetype)initWithElizabethArdenInfomation {
    if (self = [super init]) {
        self.title = @"拯救压力初老肌 雅顿无瑕未来微胶囊全新上市";
        self.coverImage = [UIImage imageNamed:@"detail_yadun.png"];
        self.titleImage = @"ElizabethArden-logo.png";
        self.shortComment = @"跨入的2015年，工作越来越忙，是种忙不停歇的节奏，每日里最为感慨的就是时间不够用不够用，在一步一步迈向职场精英的同时，也愈加体会了随之而来的压力.\n让我感受最为明显的即是我的皮肤，每天远超8小时的办公，密闭空间，电脑辐射，还有因各种压力带来的疲倦，走向成熟不再青春的肌肤需要能量，抗老的步调走起~";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"detail_yadun_produc.png",@"image", @"http://v.youku.com/v_show/id_XOTQ3OTk3MzI0.html", @"video", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"用起这个新收回的雅顿无瑕未来系列,对于雅顿，这个陪伴我多年的小伙伴，对它的好感是源源不断。从早先的8小时保湿到21天显效霜再到逆时空胶囊，算得上一步一个脚印见证了它的好用!",@"text",@"detail_yadun_feeling_one.png",@"image", nil];
       self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithEsteeLauderInfomation {
    if (self = [super init]) {
        self.title = @"不出色，怎么型？雅诗兰黛倾慕液态唇膏";
        self.coverImage = [UIImage imageNamed:@"detail_yashilandai_cover.png"];
        self.titleImage = @"EsteeLauder-logo.png";
        self.shortComment = @"这款唇膏由Kendall Jenner代言。Kendall Jenner，媒体爱称“金小妹”。此次全新的眼妆盘色彩多为中性，有不同的深度和光泽度，适合搭配不同的场合来调整妆容，你可以打造最经典百搭的日常通勤妆，也可稍加点缀变换成约会晚妆，更可加强色彩描画柔和的小烟熏，是秋季最适合搭配的眼妆组合";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"雅诗兰黛的Advanced TrueVision Technology ™科技使这支液体唇膏展现魅力四射的动人色彩，更兼具立体丰盈妆效。独特的缓释水分胶囊复合成分协同玻尿酸，助力双唇锁住水分，持续补水。配方还特别添加了滋养混合精油：鳄梨油、荷荷巴油和葵花籽油",@"text",@"detail_yanshilandai_product.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"唇膏全色号:",@"text",@"detail_yanshilandai_feeling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithBobblBrownInfomation {
    if (self = [super init]) {
        self.title = @"芭比波朗魅蓝暖灰限量版眼影盘全新上市";
        self.coverImage = [UIImage imageNamed:@"detail_babibolang_cover.png"];
        self.titleImage = @"bobbi-brown-logo.png";
        self.shortComment = @"此次全新的眼妆盘色彩多为中性，有不同的深度和光泽度，适合搭配不同的场合来调整妆容，你可以打造最经典百搭的日常通勤妆，也可稍加点缀变换成约会晚妆，更可加强色彩描画柔和的小烟熏，是秋季最适合搭配的眼妆组合.";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"    融合了Bobbi挚爱的深邃的灰色、柔和的米褐色和优雅的海军蓝，任何肤色都可以轻松驾驭；由浅至深，涵盖所有灰调眼妆，质感哑面亦或金属光泽皆由你随心打造，轻松演绎优雅知性。\n    此次全新的眼妆盘色彩多为中性，有不同的深度和光泽度，适合搭配不同的场合来调整妆容，你可以打造最经典百搭的日常通勤妆，也可稍加点缀变换成约会晚妆，更可加强色彩描画柔和的小烟熏，是秋季最适合搭配的眼妆组合。\n    色号：Ivory; Stone; Opal; Rich Navy; Storm Cloud; Nude Beach; Slate; Caviar 使用感受:",@"text",@"detail_bobbi_feeliing.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithCPBInfomation {
    if (self = [super init]) {
        self.title = @"CPB肌肤之钥光盈粉饼华丽上市";
        self.coverImage = [UIImage imageNamed:@"detail_CPB_cover.png"];
        self.titleImage = @"cbp-logo.png";
        self.shortComment = @"2015年夏，CPB肌肤之钥专业底妆又加入了话题性十足的新品光盈粉饼，将实现裸纱光钻，聚焦光采主角概念，使肌肤有如穿上薄纱光层般，创造前所未有的透明光泽感。YOKA评测中心对其进行了评测，看看其表现如何.";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"  微切面技术\n一种借由调整涂抺粉底时油份挥发的速度、基质与粉末的配比来控制粉末在肌肤上的排列方式之技术，粉末在肌肤表层的随机排列，使增加光透射、光反射及光扩散的多向发色光源点，让肌肤犹如穿上能从表面和底层同时散发闪耀光采的效果。\n     裸纱光钻粉末\n      CPB肌肤之钥利用计算机仿真科技，针对光特性所研发出能让粉末质地在受光时表现出优异光扩散效果的粒子形状大小与粒子间的间隔。以致在受光照射时，可借由穿透光及反射光同时产生光层扩散效果，打造肌肤细致质感光泽，与具有透明感的自然光采。此外，裸纱光钻粉末表面以丝滑涂层处理，耐汗防水，因此，除了实现丝滑的使用触感外，更带了优异的长效持妆效果.    \nCPB肌肤之钥光盈粉饼如同裸纱般轻透亮泽，能隐隐勾勒出脸庞细致线条，拥有钻石般闪耀迷人，时时绽现光芒成为聚光焦点，赋予肌肤无瑕光感，完美呈现钻石般聚焦迷人闪耀肌质.\n   亮肌复合精华 \n   添加CPB肌肤之钥品牌核心成分-亮肌复合精华，为肌肤带来由内而外散发的自然光采；让肌肤上妆的同时，获得修护保养，帮助肌肤维持在光透水嫩弹润状态。",@"text",@"",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"　  这款CPB新粉饼外观上延续了CPB内调、含蓄的特色，正面看上去全黑的表面在不同的光线下会呈现暗蓝色菱格纹路，十分有趣",@"text",@"detail_CPB_feeling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithYSLInfomation {
    if (self = [super init]) {
        self.title = @"YSL妍活青春角质调理液";
        self.coverImage = [UIImage imageNamed:@"detail_YSL_cover.png"];
        self.titleImage = @"help-logo.png";
        self.shortComment = @"YSL妍活青春角质调理液，利用诺贝尔聚糖科技，揭示最新护肤发现：角质层的规律代谢，以及角质细胞的健康成熟程度，是决定肌肤肤质的关键因素。通过“角质调理”让角质层重回规律代谢，肌肤重获青春、水润、强韧健康，释放绝对光芒.";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"detail_YSL_produc.png",@"image",@"http://v.youku.com/v_show/id_XMTI5NjU0NTQ5Mg==.html?from=y1.7-1.2",@"video", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"小编：精华质地呈白色晶莹感的半透明凝乳状，水润感十足，触感轻盈不厚重，独具迷人的果香加花香的复合香味。轻轻涂抹即能迅速与肌肤结合，吸收速度快，用后肌肤触感轻柔舒润。\n评测：\n     感觉还是应该配套使用才会有效果的！用在霜类产品之前利于霜的很好吸收。夏天用的话可以不用乳霜类产品。不会出油",@"text",@"detail_YSL_feeling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithSisleyInfomation {
    if (self = [super init]) {
        self.title = @"sisley 全新黑玫瑰珍宠滋养精华液";
        self.coverImage = [UIImage imageNamed:@"detail_sisley_cover.png"];
        self.titleImage = @"Sisley-logo.png";
        self.shortComment = @"保养肌肤要从肌肤最基础的步骤做起，而肌肤最需要的基本元素就是清洁，人的脸上有300,000个毛孔，仅仅依靠双手和洁面卸妆产品，只能洗净表层的肌肤，无法彻底清洗毛孔里的油污。被誉为“洗脸神器”的科莱丽声波洁面仪推出Smart Profile (智能型)。它真的如此神奇？和小鲜鲜我来一探究竟吧";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"全新「科莱丽声波洁面仪Smart Profile (智能型)」， 全新 Smart Mode「智能模式」通过内置芯片读取面部不同部位信息以自动更换不同清洁档速，以及Turbo「一键增速」功能，兼容面部/身体/足部专用刷头、成就all-in-one强大功能，实现全面呵护；带来最出色科技创新，成就更智能、更简便、更有力的洁面新体验。",@"text",@"detail_sisley_product.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"产品技术：\n    超越各类传统皮肤清洁方式，对于去除藏于皮肤毛孔的污垢和皮脂，Clarisonic科莱丽声波净颜系统专利技术以每秒300次的摇摆性微按摩振荡温和高效的流体动力展现出6倍于传统手洗清洁功效。\n    Clarisonic科莱丽声波摇摆振荡技术以温和摇摆方式与肌肤天然弹性相结合，在深入清除油脂及污垢的同时，将摩擦降至最低，保护肌肤胶原蛋白.",@"text",@"detail_sisley_feeling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithHelpClearSkinInfomation {
    if (self = [super init]) {
        self.title = @"Help Clear Skin祛痘牛奶——喝出来的光滑肌肤";
        self.coverImage = [UIImage imageNamed:@"detail_helpSkin_cover.png"];
        self.titleImage = @"help-logo.png";
        self.shortComment = @"原来只听说过痘痘肌的妹子应该少喝牛奶，现在居然连牛奶也能祛痘？好吧，此牛奶非彼牛奶，而是英国的一种特殊饮品，被称为是help：clear skin。这个“牛奶”中包含了一种生物活性蛋白，富含乳铁蛋白，由于其抗菌效果，已被证实可以降低许多皮肤杂质的细菌的发展，有助于防止瑕疵的形成，帮助实现更清晰的皮肤.";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"【产品官方英文】Help Clear Skin\n【产品官方中文】Help clear skin 100% 纯天然蛋白粉28天量 新版 官方7.5折\n【产品有效期】2013年12月前\n【产品介绍】Help Clear Skin，是一款100%纯天然蛋白粉，研究证明它抽取了牛奶中的Lactoferrin能够改善经常爱长痘痘的皮肤，对疤痕也有治愈的效果。\n【容量】7x5g 4盒\n【使用方法】每天两袋加到水，汤或酸奶中吃。一盒是一周的供应量。这里卖的是28天的量，一天两次！可以将本产品放入白水中，牛奶，果汁，咖啡，茶，酸奶，汤，或者其他液体中一起服用。",@"text",@"",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"先說一下, 我的臉已經不是以前兩頰同時長滿含膿暗瘡的光景了.",@"text",@"detail_helpSkin_feeling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithBareMineralsInformation {
    if (self = [super init]) {
        self.title = @"BareMinerals睡眠粉—留宿必备";
        self.coverImage = [UIImage imageNamed:@"BareMinerals.png"];
        self.titleImage = @"bareminerals-logo.png";
        self.shortComment = @"睡觉也要涂粉？这是因为很多女孩子担心自己的素颜吓到男票，或是去朋友家留宿怕被发现皮肤差等等等。所以这款堪比护肤品的晚间睡眠粉便应运而生～全新突破夜间护理方式!";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Pure Transformation Night Treatment 夜间焕肤睡眠粉(去痘消炎、抗皱、嫩滑皮肤）\n规格：4.2g/0.15oz \n产地：美国 \n质地：粉状 矿物护肤夜间护理的全新突破！采用活性配方，将72种有机矿物结合，持续作用于肌肤，不含防腐剂，对皮肤无刺激，适合包括敏感性肌肤在内的各种肤质。",@"text",@"BareMinerals.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"bareMinerals应该说是矿物护肤的始祖，而夜间焕肤睡眠粉则是他们家的最明星单品。没用过这款矿物睡眠粉的，都不好意思说自己真的跟矿物结缘过很久之前会注意到她是因为她一副彩妆的外表却是护肤的干活，分明就是望眼娇滴滴，转身却抬起煤气罐上6楼的女汉子！而且官网标明“永不过期！不需卸妆！不会堵塞毛孔的散粉”！戳！你这么强大又逆生长，散粉同胞们知道么？为你按赞按到死！！！！",@"text",@"BareMinerals.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
    }
    return self;
}
- (instancetype)initWithClearSkin{
    if (self = [super init]) {
        self.title = @"拉杜丽 贵族玫瑰花瓣腮红";
        self.coverImage = [UIImage imageNamed:@"ClearSkin.png"];
        self.titleImage = @"ClearSkin-logo.png";
        self.shortComment = @"提到拉杜丽laduree首先想到是他们家的马卡龙，但你知道它的彩妆同样出色吗？拉杜丽laduree和Albion合作推出的彩妆，几乎一夜之间，彩妆界人手几盒，甚至有人直接入了所有颜色！它的花瓣腮红，6克价格800多，号称彩妆里的“爱马仕”，如此高昂的价格还让这么多人趋之若鹜，到底好在哪里呢？";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"【商品名称】LADUREE拉杜丽 贵族玫瑰花瓣造型腮红修容\n【商品产地】日本\n【商品包装】盒装\n【适合肤质】所有肤质\n【商品色号】01、02、04",@"text",@"ClearSkin.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"",@"text",@"ClearSkin.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];

    }
    return self;
}
- (instancetype)initWithSisley{

    if (self = [super init]) {
        self.title = @"sisley 全新黑玫瑰珍宠滋养精华液";
        self.coverImage = [UIImage imageNamed:@"sisley.png"];
        self.titleImage = @"help-logo.png";
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
        self.titleImage = @"skii-logo.png";
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
        self.titleImage = @"LanZhi-logo.png";
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
        self.titleImage = @"Aupres-logo.png";
        self.shortComment = @"欧珀莱时光锁紧实弹润系列抗皱精萃眼霜就能很好滴满足上述要求，让Q弹媚眼再生 小P老师可是倾情推荐这款眼霜哦";
        NSDictionary *productionDescriptionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"",@"text",@"AupresIntroduce.png",@"image", nil];
        self.productionDescription = [NSArray arrayWithObjects:productionDescriptionDictionary, nil];
        NSDictionary *feelingDictionary = [NSDictionary dictionaryWithObjectsAndKeys: @"",@"text",@"AupresFelling.png",@"image", nil];
        self.feeling = [NSArray arrayWithObjects:feelingDictionary, nil];
        
    }
    
    return self;
    



}
@end
