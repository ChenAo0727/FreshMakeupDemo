//
//  MineViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by Mac on 15/8/20.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "MineViewControllerDataSource.h"
#import "MineTableViewCell.h"
#import "UIColor+Utility.h"
@implementation MineViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    [self InitializationData];
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MINE_TABLEVIEW_CELL];
    cell.mineLabel.text = [self.mineLabelArray objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor colorFromHexCode:@"#9bd5d3"];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}
- (void)InitializationData {
    self.mineLabelArray = [NSMutableArray arrayWithObjects:@"我的草地",@"我的优惠",@"我的试用",@"消息",@"设置", nil];
}
@end
