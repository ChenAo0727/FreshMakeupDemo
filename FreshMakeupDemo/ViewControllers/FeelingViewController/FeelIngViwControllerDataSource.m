//
//  FeelIngViwControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelIngViwControllerDataSource.h"
#import "feelingImageCell.h"
#import "FeelingTextCell.h"
@implementation FeelIngViwControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    feelingImageCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_IMAGE_CELL];
    [cell updateWithFeelImageView:@"detail_introduction_image.png" Feelllabel:@""];
    if (indexPath.row == 1) {
        FeelingTextCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_TEXT_CELL];
            [cell updateFeelingTextLabel:@"机器人助理“度秘”的推出，就是致力于提升连接人与服务的效率。为了让“度秘”实现强大索引能力和智能交付能力，百度必须建立让3600行商户便捷接入百度服务生态的连接机制。李东旻介绍：“在度秘的背后，百度通过三种连接机制提供服务保障，他们分别是直达号、插件和店铺页。这三种机制的特色和运作模式各不相同，组合起来能覆盖不同需求的各类商家，让他们都能顺利接入百度的O2O生态中。”"];

        return cell;
    }
    return cell;
    
}

@end
