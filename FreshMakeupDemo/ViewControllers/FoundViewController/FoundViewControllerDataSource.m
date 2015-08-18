//
//  FoundViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FoundViewControllerDataSource.h"
#import "FoundTableViewCell.h"
#import "FoundBranchTableViewCell.h"
#import "UIColor+Utility.h"
@implementation FoundViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    self.headImageArray = [NSMutableArray arrayWithObjects:@"findarticleavatar1.png",@"2",@"findarticleavatar2.png",@"4",@"findarticleavatar3.png",@"6",@"findarticleavatar2.png", nil];
    self.imageArray = [NSMutableArray arrayWithObjects:@"findarticle1.png",@"2",@"findarticle2.png",@"4",@"findarticle3.png",@"6",@"findarticle4.png", nil];
    self.lableArray = [NSMutableArray arrayWithObjects:@"[叫我女王]女人的化妆台绝对比床神秘",@"2",@"[小歪]难得一见的化妆刷,性价比极高",@"4",@"[柠檬]百雀羚就是国货的代言词",@"6",@"[叫我女王]女人的化妆台就是神秘", nil];
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1 || indexPath.row == 3|| indexPath.row == 5 || indexPath.row == 7) {
        FoundBranchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FOUND_BRANCH_TABLEVIEWCELL];
        cell.backgroundColor = [UIColor colorFromHexCode:@"#C0C0C0"];
        return cell;
    } else {

    FoundTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FOUND_TABLEVIEW_CELL];
    cell.foundImageView.image = [UIImage imageNamed:[self.imageArray objectAtIndex:indexPath.row]];
    cell.foundHeadImageView.image = [UIImage imageNamed:[self.headImageArray objectAtIndex:indexPath.row]];
    cell.foundLabel.text = [self.lableArray objectAtIndex:indexPath.row];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
    }
}
@end
