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
        NSDictionary *feelingDictionary1 = [NSDictionary dictionaryWithObjectsAndKeys:@"用起这个新收回的雅顿无瑕未来系列对于雅顿，这个陪伴我多年的小伙伴，对它的好感是源源不断。从早先的8小时保湿到21天显效霜再到逆时空胶囊，算得上一步一个脚印见证了它的好用!",@"text",@"feeling_yadun_feeling_one.png",@"image", nil];
        NSDictionary *feelingDictionary2 = [NSDictionary dictionaryWithObjectsAndKeys:@"雅顿无瑕未来系列的三件套，涵盖了眼霜，精华，面霜，作为一个系列来说，显得比较精简但功效上却是足够强大。专门针对轻熟肌肤设计，目的当然在于青春抗老，此刻肌肤缺失活力各种衰老现象显现，归根到底还是皮肤自我更新能力减弱需要外在的力量注入来帮助它抵御衰老\n                                          打开的每一个瓶罐，每一个质地都让我很惊喜，眼霜的清爽感，精华的水润感，还有面霜的柔滑感，用来的触感非常舒服，带着一种小小的享受感，很是愉悦呢!",@"text",@"feeling_yadun_feeling_tow.png",@"image", nil];
        NSDictionary *feelingDictionary3 = [NSDictionary dictionaryWithObjectsAndKeys:@"我总是期待着明眸，对于眼霜的要求总是多多，想要补水，想要去浮肿，想要改善黑眼圈，还有因那长时间的面对电脑带来的疲劳还想要可以缓解眼周疲劳。用起的雅顿无瑕未来眼部啫喱没有让我失望，竟是满足了我对于眼霜的所有诉求。保湿的玻尿酸，抗氧化的维他命E,提亮眼周改善浮肿的海藻萃取复合物，这些成分被融合入眼霜中，在每天的使用中为我双眼带来呵护!",@"text",@"feeling_yadun_feeling_three.png",@"image", nil];
        self.feelIngArray = [NSArray arrayWithObjects:feelingDictionary1,feelingDictionary2,feelingDictionary3, nil];
    }
    return self;
}
@end
