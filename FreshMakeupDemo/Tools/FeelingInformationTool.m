//
//  FeelingInformationTool.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelingInformationTool.h"

@implementation FeelingInformationTool
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
- (instancetype)initWithSKInformation {

    if (self = [super init]) {
        NSDictionary *feelingDictionary1 = @{@"hasTag":@"0",@"image":[UIImage imageNamed:@"feeling_SK-II"]};
        NSDictionary *feelingDictionary2 = @{@"hasTag":@"1",@"text":@"“我觉得超肌因系列的精华质地很薄透，面霜很丰盈，非常细腻，容易吸收，使用感受我觉得甚至比之前的大小红瓶更加好。” ——游丝祺"};
        self.feelIngArray = [NSArray arrayWithObjects: feelingDictionary1,feelingDictionary2,nil];
    }
    return self;
}

- (instancetype)initWithSisleyInformation {
    if (self = [super init]) {
        NSDictionary *feelingDic1 = @{@"hasTag":@"0",@"image":[UIImage imageNamed:@"feeling_sisley_feeling_one"]};
        NSDictionary *feelingDic2 = @{@"hasTag":@"1",@"text":@"评测结果：法国希思黎黑玫瑰珍宠滋养精华油紫色外包装高档大气，滴管取用设计使得精华油不易受二次污染，且取用方便。精华油为透明的油状质地，触感柔滑，流动性好，但轻薄易吸收，蕴含玫瑰、木兰和天竺葵精油，散发馥郁香气。"};
        NSDictionary *feelingDic3 = @{@"hasTag":@"0",@"image":[UIImage imageNamed:@"feeling_sisiley_feeling_two"]};
        NSDictionary *feelingDic4 = @{@"hasTag":@"2",@"text":@"评测得分：9.0分\n评测结果：从图片中可以很清楚地看到法国希思黎黑玫瑰珍宠滋养精华油的吸收力不错，肌肤表面只粘附了较少的小泡沫球，说明产品吸收得很较快，使用时肤感清爽舒适，不会对肌肤造成负担，配合按摩和拍打更能加速吸收。"};
        NSDictionary *feelingDic5 = @{@"hasTag":@"0",@"image":[UIImage imageNamed:@"feeling_sisley_feeling_three"]};
        NSDictionary *feelingDic6 = @{@"hasTag":@"3",@"text":@"评测得分：9.5分\n评测结果：通过对比我们看到浸润过样品的叶片细胞染色后95%左右的区域褪色了，褪色区颜色基本没有被染色，褪色程度较高，表明法国希思黎黑玫瑰珍宠滋养精华油具有优秀的促进细胞活跃能力，融合了5种植物活性成分，其中特有的经典抗老成分海扇藻精粹，能够促进透明质酸合成，强化真皮结构，恢复真皮组织的密度，促进细胞的新生，修复受损肤质。"};
        NSDictionary *feelingDic7 = @{@"hasTag":@"0",@"image":[UIImage imageNamed:@"feeling_sisley_feeling_four"]};
        NSDictionary *feelingDic8 = @{@"hasTag":@"4",@"text":@"评测得分： 9.5分\n评测结果：从肌肤水分测试仪可知，使用这款法国希思黎黑玫瑰珍宠滋养精华油前，肌肤的水分值仅仅为35.1%，处于缺水干燥状态。使用产品后，肌肤水分值立即上升到56.3%，即时补水效果非常好，能瞬间给肌肤补充足够的水分，使肌肤水嫩饱满;使用一小时后，肌肤水分值仅仅下降2.8%，还是处于非常滋润状态，说明法国希思黎黑玫瑰珍宠滋养精华油，所蕴含的海扇藻精粹、植物甘油等，能够强效持久保湿、加强真皮层的水分屏障，提升真皮层的锁水能力。"};
        NSDictionary *feelingDic9 = @{@"hasTag":@"0",@"image":[UIImage imageNamed:@"feeling_sisley_feeling_five"]};
        NSDictionary *feelingDic10 = @{@"hasTag":@"5",@"text":@"评测得分： 9.5分\n评测结果：从上图中我们可以看出，使用了法国希思黎黑玫瑰珍宠滋养精华油后，肤质得到明显改善，含水量和皮肤细嫩度都显著提高6个级别，肌肤变得水润细滑;同时含油量也提高了4个等级，说明此款精华油能迅速为肌肤补充水分的同时，帮助肌肤恢复水油平衡的最佳状态，令肌肤变得柔润细腻，滋润效果十分明显。"};
        self.feelIngArray = [NSArray arrayWithObjects:feelingDic1,feelingDic2,feelingDic3,feelingDic4,feelingDic5,feelingDic6,feelingDic7,feelingDic8,feelingDic9,feelingDic10,nil];
        
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
