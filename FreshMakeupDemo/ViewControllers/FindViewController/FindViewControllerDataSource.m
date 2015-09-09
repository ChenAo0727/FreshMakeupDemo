//
//  FoundViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FindViewControllerDataSource.h"
#import "FindTableViewCell.h"
#import "FindBranchTableViewCell.h"
#import "UIColor+Utility.h"
@implementation FindViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    [self initializationDate];
    if (section == 0) {
        return 6;
    } else {
    return 0;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 ) {
        return [self findTableView:tableView indexPath:indexPath];
    } else {
        static NSString *str = @"retuse";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        }
        return cell;

    }
}

//分区个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}
//数组 初始化
- (void)initializationDate {
    self.headImageArray = [NSMutableArray arrayWithObjects:@"findarticleavatar1.png",@"findarticleavatar2.png",@"findarticleavatar3.png",@"findarticleavatar2.png",@"findarticleavatar1.png",@"findarticleavatar3.png", nil];
    self.imageArray = [NSMutableArray arrayWithObjects:@"findarticle1.png",@"findarticle2.png",@"findarticle3.png",@"findarticle4.png",@"findarticle5.png",@"findarticle6.png", nil];
   self.lableArray = [NSMutableArray arrayWithObjects:@"[香水传奇]Kendall Jenner代言,打造最经典百搭的日常通勤装",@"[叫我女王]聚焦光彩主角概念,使肌肤有如穿上薄纱光层般",@"[柠檬]走向成熟不再青春的肌肤需要能量,抗老的步调走起~",@"[法海]源自韩国爱茉莉太平洋顶尖技术",@"[小喵]让Q弹媚眼再生",@"[小歪]聚焦光彩主角概念,使肌肤有如穿上薄纱光层般", nil];
   self.findLableArray = [NSMutableArray arrayWithObjects:@"不出色,怎么型?雅诗兰黛倾慕液态唇膏",@"CPB肌肤之钥光盈粉饼华丽上市",@"拯救压力初老肌 雅顿无瑕未来微胶囊全新上市",@"兰芝遇见时尚定制版BB霜",@"欧珀莱 全新时光锁紧致塑颜系列",@"sisley 全新黑玫瑰珍宠滋养精华液", nil];
}
#pragma mark 自定义cell
- (UITableViewCell *)findTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    FindTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FIND_TABLEVIEW_CELL];
    cell.findImageView.image = [UIImage imageNamed:[self.imageArray objectAtIndex:indexPath.row]];
    cell.findHeadImageView.image = [UIImage imageNamed:[self.headImageArray objectAtIndex:indexPath.row]];
    cell.findLabel.text = [self.lableArray objectAtIndex:indexPath.row];
    cell.findAdvertLabel.text = [self.findLableArray objectAtIndex:indexPath.row];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell updateGradientLayer];
    return cell;
}
@end
