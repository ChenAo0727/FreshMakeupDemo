//
//  FeelingInformationTool.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelingInformationTool.h"

@implementation FeelingInformationTool

- (instancetype) initLadureeInfomation {
    if (self = [super init]) {
        NSDictionary *feelingDictionary1 = @{@"hasTag":@"1", @"text":@"评测项目一：外观设计"};
        NSDictionary *feelingDictionary2 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_laduree_image"]};
        NSDictionary *feelingDictionary3 = @{@"hasTag":@"0", @"text":@"    我们买的是限量mini版，1克300多！腮红不像粉底消耗那么大，再加上平时不怎么化妆，或者有些花心的MM各种腮红用都用不完，这个mini版的量简直就是再适合不过了!\n    根据上市的时间不同，限定版的包装也不一样，我们买的是一周年纪念版，还有很多其他花色的盒子可供选择！与平常买来就装在盒子里面的腮红不同的是，拿到手上时，腮红在方形纸盒里面，外壳是单独放置的。使用时，需要自己把腮红放到盒子里面，这样既卫生又不用担心东西会在运输的过程中被损坏。包装风格就是laduree一贯的宫廷贵族风，粉色条纹的盒子上点缀了一圈小花，狠狠地抓住了每个女人心中的那个公主梦！"};
        NSDictionary *feelingDictionary4 = @{@"hasTag":@"2", @"text":@"评测项目二：造型做工"};
        NSDictionary *feelingDictionary5 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_laduree_image2"]};
        NSDictionary *feelingDictionary6 = @{@"hasTag":@"0", @"text":@"    把玫瑰花放进盒子里就是这种效果了，本来还在担心粉质的东西会不会很脆弱，做成花瓣的形状会不会更加不堪一“碰”？但是真正开始用它却发现花瓣如同真花一样，只要你不去撕扯，完全不用担心它会碎成片。可以放心大胆地用。\n    花瓣一共六片，大的小的分别三片，正装的话有大中小三种型号。纯手工制作，1克的量要压在六片花瓣上，真是让人惊叹的工艺，每一片上面都可以看到十分清晰的纹路，周边还有不规则的卷曲，做工之精巧就像是新鲜的玫瑰一样，与其说是化妆品不如说是一件艺术品！真的让人有种静静观赏就好，不忍去用的感觉!"};
        NSDictionary *feelingDictionary7 = @{@"hasTag":@"3", @"text":@"评测项目三：香味"};
        NSDictionary *feelingDictionary8 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_laduree_image3"]};
        NSDictionary *feelingDictionary9 = @{@"hasTag":@"0", @"text":@"    造型如此出众的腮红，自然也让人想闻一闻究竟是什么样的味道，除了粉妆特有的脂粉味以外，花瓣腮红闻起来还有一股玫瑰味，很多人说就像是真的玫瑰香气一样，香味比较浓郁，我们参与评测的几个人里面都没有排斥这个味道的。浓郁的玫瑰香，能如此香而不腻的腮红确实不多见，闻到这股香气会有一种穿越到古代宫廷的感觉！但如果你对香气敏感的话，可能会觉得过香。所以我们只给了它8分"};
        NSDictionary *feelingDictionary10 = @{@"hasTag":@"4", @"text":@"评测项目四：色"};
        NSDictionary *feelingDictionary11 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_laduree_image4"]};
        NSDictionary *feelingDictionary12 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_laduree_image5"]};
        NSDictionary *feelingDictionary13 = @{@"hasTag":@"0", @"text":@"【01号浅粉】——没有看起来那么艳，用量自行斟酌，适合皮肤较白\n【02号蜜桃粉】——健康肤色，偏黄肤色的妹纸还是这款保险哦\n【03号自然修容色】——小脸用，打腮边和脖颈可以修饰下颚的骨头"};
        self.feelIngArray = @[feelingDictionary1, feelingDictionary2, feelingDictionary3, feelingDictionary4, feelingDictionary5, feelingDictionary6, feelingDictionary7, feelingDictionary8,feelingDictionary9, feelingDictionary10, feelingDictionary11, feelingDictionary12, feelingDictionary13];
    }
    return self;
}

- (instancetype)initWithHelpClearSkinInfomation {
    if (self = [super init]) {
        NSDictionary *feelingDictionary1 = @{@"hasTag":@"1", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image1"]};
        NSDictionary *feelingDictionary2 = @{@"hasTag":@"0", @"text":@"先说一下, 我的脸已经不是以前两颊同时长满含脓暗疮的光景了\n这年来最严重时↓↓↓"};
        NSDictionary *feelingDictionary3 = @{@"hasTag":@"2", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image2"]};
        NSDictionary *feelingDictionary4 = @{@"hasTag":@"0", @"text":@"是, 我知道自己不算最严重的那个\n可是到这种地步已经是想死的感觉, 你明白吗?\n从去年开始, 每逢有产品声称对暗疮好, 我都会去试!\n皮肤反反复复, 时好时坏, 託赖是没有再像上图那麽严重"};
        NSDictionary *feelingDictionary5 = @{@"hasTag":@"3", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image3"]};
        NSDictionary *feelingDictionary6 = @{@"hasTag":@"0", @"text":@"HELPHELP ： CLEAR SKIN 可以有效地在 6个星期内对抗痘痘.是 100% 天然 产品，当中的主要成份是 Praventin、芦荟、Oligofructose (水溶性膳食纤维)\nPraventin含多种纯天然蛋白质複方与乳铁蛋白, 从奶品中提炼出来, 但直接饮奶却不能摄取这些天然元素。\n它可帮助痘痘肌肤从内而外变得健康, 又具有增强身体免疫力,对抗细菌引起的感染, 减少脸部红肿, 帮助肌肤的修复。"};
        NSDictionary *feelingDictionary7 = @{@"hasTag":@"4", @"text":@"它是 100% 天然 产品，当中的主要成份是 Praventin、芦荟、Oligofructose (水溶性膳食纤维)\nPraventin含多种纯天然蛋白质複方与乳铁蛋白, 从奶品中提炼出来, 但直接饮奶却不能摄取这些天然元素。\n它可帮助痘痘肌肤从内而外变得健康, 又具有增强身体免疫力,对抗细菌引起的感染, 减少脸部红肿, 帮助肌肤的修复。"};
        NSDictionary *feelingDictionary8 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image4"]};
        NSDictionary *feelingDictionary9 = @{@"hasTag":@"5", @"text":@"它不含麸质, 所以对麸质过敏的人也可以食用\n而素食者、糖尿病患者、乳糖不耐症患者也可以食用\n不过, 孕妇、授乳妇女、低血糖患者服用前最好先请教医生"};
        NSDictionary *feelingDictionary10 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image5"]};
        NSDictionary *feelingDictionary11 = @{@"hasTag":@"0", @"text":@"每盒 Help: Clear Skin 有7小包, 每包5g份量\n每天吃一小包, 持续服用4-6星期就有改善\n即是说, 大概要吃七至八盒才叫完成一个疗程。"};
        NSDictionary *feelingDictioanry12 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image6"]};
        NSDictionary *feelingDictioanry13 = @{@"hasTag":@"0", @"text":@"服用方法很简单, 只需要加入自己的无汽饮料 / 乳酪 / 麦片 / 汤 之中就可以。\n但我想告诉你..............配清水去服用绝对不是一个明智的选择!!!!"};
        NSDictionary *feelingDictioanry14 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image7"]};
        NSDictionary *feelingDictionary15 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image8"]};
        NSDictionary *feelingDictionary16 = @{@"hasTag":@"0", @"text":@"是的, 它无色无嗅, 但绝对不是无味萝 !!!!!!!!!!!!!!!\n沟水饮就好像饮紧一杯沟得好稀的奶咁, 好难入口 !!!\n仲有, 虽然包装上指示可以加于冷热饮品.....\n但千万不要加进雪过的饮品萝 !!!!!\n因为................."};
        NSDictionary *feelingDictioanry17 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image9"]};
        NSDictionary *feelingDictionary18 = @{@"hasTag":@"0", @"text":@"完全搞唔匀 !!!!\n我加左落杯冇汽苹果汁, 再死搞烂搞都仲系咁~\n同事见到就叫我当糖食左佢算 XDDDD"};
        NSDictionary *feelingDictionary19 = @{@"hasTag":@"6", @"text":@"经过我一番试验, 试过沟茶....仲难顶.....\n最后发现加落奶类饮品系最好............因为唔会饮出怪味.....\n所以我多数都沟阿华田饮.....不过佢会令杯饮品变淡~"};
        NSDictionary *feelingDictionary20 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image10"]};
        NSDictionary *feelingDictionary21 = @{@"hasTag":@"7", @"text":@"最后, 要分享一下效果\n我基本上都连续每日饮, 除了中途有2天肠胃好像不太舒服所以停左2日\n而期间系有继续出暗疮的~ 分别在下巴、鼻翼....."};
        NSDictionary *feelingDictionary22 = @{@"hasTag":@"0", @"text":@"所以其实我自己觉得冇好大好明显的改善\n生暗疮期间我亦忍唔住有搽暗疮膏, 亦有敷暗疮mask\n不过我留意到今次m前只系生左一粒咁大把\n平时点都有2,3粒, 而且复原得快过之前\n但.....到前2日又出左粒大佬系眼旁, 羊事先而家 XDDD"};
        NSDictionary *feelingDictionary23 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_help_clear_skin_image11"]};
        NSDictionary *feelingDictionary24 = @{@"hasTag":@"8", @"text":@"Help : Clear Skin 始终不是药物, 只是一些对皮肤抵抗力 / 伤口复原有帮助的天然食材\n所以也不奢望效果有多快多显著\n想要极短期内变成不会长暗疮的肤质, 只是不设实际\n但长期服用当作是保养品的话, 我觉得一试无妨 !"};
        self.feelIngArray = @[feelingDictionary1, feelingDictionary2, feelingDictionary3, feelingDictionary4, feelingDictionary5, feelingDictionary6, feelingDictionary7, feelingDictionary8, feelingDictionary9, feelingDictionary10, feelingDictionary11, feelingDictioanry12, feelingDictioanry13, feelingDictioanry14, feelingDictionary15, feelingDictionary16, feelingDictioanry17, feelingDictionary18, feelingDictionary19, feelingDictionary20, feelingDictionary21, feelingDictionary22, feelingDictionary23, feelingDictionary24];
    }
    return self;
}

- (instancetype)initWithElizabethArdenInfomation {
    if (self = [super init]) {
        NSDictionary *feelingDictionary1 =  @{@"hasTag":@"1", @"text":@"用起这个新收回的雅顿无瑕未来系列对于雅顿，这个陪伴我多年的小伙伴，对它的好感是源源不断。从早先的8小时保湿到21天显效霜再到逆时空胶囊，算得上一步一个脚印见证了它的好用!"};
        NSDictionary *feelingDictionary2 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_one.png"]};
        NSDictionary *feelingDictionary3 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_3.png"]};
        NSDictionary *feelingDictionary4 =  @{@"hasTag":@"1", @"text":@"雅顿无瑕未来系列的三件套，涵盖了眼霜，精华，面霜，作为一个系列来说，显得比较精简但功效上却是足够强大。专门针对轻熟肌肤设计，目的当然在于青春抗老，此刻肌肤缺失活力各种衰老现象显现，归根到底还是皮肤自我更新能力减弱需要外在的力量注入来帮助它抵御衰老\n打开的每一个瓶罐，每一个质地都让我很惊喜，眼霜的清爽感，精华的水润感，还有面霜的柔滑感，用来的触感非常舒服，带着一种小小的享受感，很是愉悦呢!"};
        NSDictionary *feelingDictionary5 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_tow.png"]};
        NSDictionary *feelingDictionary6 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_6.png"]};
        NSDictionary *feelingDictionary7 =  @{@"hasTag":@"1", @"text":@"我总是期待着明眸，对于眼霜的要求总是多多，想要补水，想要去浮肿，想要改善黑眼圈，还有因那长时间的面对电脑带来的疲劳还想要可以缓解眼周疲劳。用起的雅顿无瑕未来眼部啫喱没有让我失望，竟是满足了我对于眼霜的所有诉求。保湿的玻尿酸，抗氧化的维他命E,提亮眼周改善浮肿的海藻萃取复合物，这些成分被融合入眼霜中，在每天的使用中为我双眼带来呵护!"};
        NSDictionary *feelingDictionary8
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_8.png"]};
        NSDictionary *feelingDictionary9 =  @{@"hasTag":@"1", @"text":@"轻点在眼周，喜人的啫喱质地总是那么容易涂抹开，滑滑的吸收很快，一点不用担心脂肪粒问题，凉凉的触感还很适宜日渐温暖的上海气候。每天的早晨轻轻一抹为双眼护航，一周用来还真的可以看到眼周肌肤更加明亮细滑的效果!"};
        NSDictionary *feelingDictionary10
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_three.png"]};
        NSDictionary *feelingDictionary11
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_11.png"]};
        NSDictionary *feelingDictionary12 =  @{@"hasTag":@"1", @"text":@"最爱的当属这枚雅顿无瑕未来微囊精华液，也是此系列中最为火热的一枚，蕴含经典分子钉青春修复科技，TELOSENSE保护蛋白复合物，和紧致亮采因子天然复合配方及甘草萃取物，提亮肤色、紧致毛孔。各种高科技身影尽在其中，说来雅顿分子钉科技算得上独树一帜，现在融入到这款产品中，带来的抗老效果的确是会让人有所期待。精华的质地极其独特，瓶中粒粒宛如珍珠般的小颗粒，是它特有的独特微囊，可以让有效成分完美保存其中，在按压挤出的瞬间破裂，充分释放其中的能量到精华中，然后快速被肌肤所吸收，为肌肤带来最为鲜活的能量补给!"};
        NSDictionary *feelingDictionary13
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_yadun_feeling_13.png"]};
        NSDictionary *feelingDictionary14 =  @{@"hasTag":@"1", @"text":@"水质质地，名副其实的精华液，涂抹起来顺滑十足，吸收也是超迅速。每次轻按三下涂抹全脸都能快速被完全吸收，却还是让我有种不过瘾的感觉，想继续来上一些，于是乎不知不觉也就加速了我的精华消耗!"};
        self.feelIngArray = [NSArray arrayWithObjects:feelingDictionary1,feelingDictionary2,feelingDictionary3,feelingDictionary4,feelingDictionary5,feelingDictionary6,feelingDictionary7,feelingDictionary8,feelingDictionary9,feelingDictionary10,feelingDictionary11,feelingDictionary12,feelingDictionary13,feelingDictionary14, nil];

    }
    return self;
}
- (instancetype)initWithEsteeLauderInfomation {
    if (self = [super init]) {
        NSDictionary *feelingDictionary1 =  @{@"hasTag":@"1", @"text":@"雅诗兰黛四大型色态度:"};
        NSDictionary *feelingDictionary2 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_2.png"]};
        NSDictionary *feelingDictionary3 =  @{@"hasTag":@"1", @"text":@"唇膏全色号:"};
        NSDictionary *feelingDictionary4 = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_4.png"]};
        NSDictionary *feelingDictionary5=  @{@"hasTag":@"1", @"text":@"评测色号：#210半糖蜜桃，#250桀骜玫瑰!"};
        NSDictionary *feelingDictionary6
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_6.png"]};
        NSDictionary *feelingDictionary7 =  @{@"hasTag":@"1", @"text":@"　　雅诗兰黛倾慕液态唇膏为黑色方管状，管身带有弧度，触摸很圆滑，通过管身中间可以看到改液态唇膏的颜色；顶部为金色，印有雅诗兰黛的英文，整体给人低调、但却不随意的感觉."};
        NSDictionary *feelingDictionary8
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_8.png"]};
        NSDictionary *feelingDictionary9 =  @{@"hasTag":@"1", @"text":@"　　该款液体唇膏刷头采用全新倾斜式弯头设计——魔力丰唇刷，在使用时可用唇刷的顶端先勾勒唇线，再用主体部分填充，即可化出完美、整齐的唇妆。\n\n    此外，在真人使用唇膏时，用此唇刷即可化出完美唇形:"};
        NSDictionary *feelingDictionary10
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_10.png"]};
        NSDictionary *feelingDictionary11 =  @{@"hasTag":@"1", @"text":@"  　Step1，用唇刷的平画面蘸取适合液态唇膏涂抹在唇部;\n    Step2，用特别设计的弯头顶端沿唇线处勾勒出唇形;\n    Step3，再次蘸取液体唇膏，用唇刷勺型弯头涂抹上下唇的中部，是的唇部更加立体、饱满。"};
          NSDictionary *feelingDictionary12
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_12.png"]};
        NSDictionary *feelingDictionary13 =  @{@"hasTag":@"1", @"text":@" 　　将液体唇膏涂抹在肌肤上，可以看到这款液体唇膏非常显色、饱和度高，而且膏体润滑、流畅，带有明显的光泽，这种光泽会让液体唇膏涂抹在唇上后更加饱满和滋润。\n\n    210为偏一点紫色的红色，250为浅豆沙色。"};
        NSDictionary *feelingDictionary14
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_14.png"]};
        
        
        NSDictionary *feelingDictionary15 =  @{@"hasTag":@"1", @"text":@"　　使用前唇部黯淡无光，而且有明显的暗沉，唇部的颜色也不太均匀；\n使用后，唇部变得非常饱满、有光泽，完全遮盖唇纹和唇色不均匀的地方；250号色很日常，无妆情况下也是可以使用，210号色略红一些，是一个款可以立刻提升气色的液体唇膏。"};
        NSDictionary *feelingDictionary16
        = @{@"hasTag":@"0", @"image":[UIImage imageNamed:@"feeling_EsteeLauder_feeling_16.png"]};
        NSDictionary *feelingDictionary17 =  @{@"hasTag":@"1", @"text":@"　　持久性是唇部产品使用最关注的问题，因此我们通还将对这款面膜进行持久性测试。不过因为是液体唇膏，所以我们会在涂抹唇膏后10分钟再进行测试。\n通过使用化妆棉按压唇部可以发现，化妆棉几乎没有沾上唇膏的痕迹，说明这款液体唇膏很持久，一般的喝水等动作不会造成唇妆脱妆。\n评测总结：通过评测可以得知，雅诗兰黛倾慕液态唇膏不但膏体丰盈水润而且非常的顺滑，使用特别设计的刷头可以很轻易的画出完美唇形，饱和度高的色彩也让唇部显得十分饱满。另外，真人试用发现，这款液体唇膏的持久性长达8小时，一般的喝水等动作都不会造成脱妆。\n这款液态唇膏的颜色非常正，分别有四个型色态度——正青春、敢冒险、轻风格、星气场，你可以根据自己的性格选择最能表现自己的颜色，完美展示自己的型色态度。"};
        self.feelIngArray = [NSArray arrayWithObjects:feelingDictionary1,feelingDictionary2,feelingDictionary3,feelingDictionary4,feelingDictionary5,feelingDictionary6,feelingDictionary7,feelingDictionary8,feelingDictionary9,feelingDictionary10,feelingDictionary11,feelingDictionary12,feelingDictionary13,feelingDictionary14,feelingDictionary15,feelingDictionary16,feelingDictionary17, nil];

    }
    return self;
}
@end
