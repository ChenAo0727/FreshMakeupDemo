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
    self.headImageArray = [NSMutableArray arrayWithObjects:@"findarticleavatar1.png",@"2",@"findarticleavatar2.png",@"4",@"findarticleavatar3.png",@"6",@"findarticleavatar2.png", nil];
    self.imageArray = [NSMutableArray arrayWithObjects:@"findarticle1.png",@"2",@"findarticle2.png",@"4",@"findarticle3.png",@"6",@"findarticle4.png", nil];
    self.lableArray = [NSMutableArray arrayWithObjects:@"[叫我女王]女人的化妆台绝对比床神秘",@"2",@"[小歪]难得一见的化妆刷,性价比极高",@"4",@"[柠檬]百雀羚就是国货的代言词",@"6",@"[叫我女王]女人的化妆台就是神秘", nil];
    self.subtitleArray = [NSMutableArray arrayWithObjects:@"black.png",@"2",@"white.png",@"4",@"white.png",@"6",@"black.png", nil];
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1 || indexPath.row == 3|| indexPath.row == 5 || indexPath.row == 7) {
        FindBranchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FIND_BRANCH_TABLEVIEWCELL];
        cell.backgroundColor = [UIColor colorFromHexCode:@"#EAEAEA"];
        return cell;
    } else {
    FindTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FIND_TABLEVIEW_CELL];
    cell.findImageView.image = [UIImage imageNamed:[self.imageArray objectAtIndex:indexPath.row]];
    cell.findHeadImageView.image = [UIImage imageNamed:[self.headImageArray objectAtIndex:indexPath.row]];
        cell.findSubtitleImageView.image = [UIImage imageNamed:[self.subtitleArray objectAtIndex:indexPath.row]];
    cell.findLabel.text = [self.lableArray objectAtIndex:indexPath.row];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
    }
}
@end
