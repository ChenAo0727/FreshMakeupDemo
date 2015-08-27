//
//  EarlyAdoptersTheTrialViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "EarlyAdoptersTheTrialViewControllerDataSource.h"
#import "EarlyAdoptersTitleImageTableViewCell.h"
#import "EarlyAdoptersReportTableViewCell.h"
#import "EarlyAdoptersInformationTableViewCell.h"
#import "EarlyAdoptersReceiveTableViewCell.h"
#import "EarlyAdoptersReportTitleTableViewCell.h"
#import "EarlyAdoptersPartitionTableViewCell.h"
#import "UIColor+Utility.h"
@implementation EarlyAdoptersTheTrialViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 9;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return [self earlyAdoptersTitleImageTableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 1) {
        return [self earlyAdoptersInformationTableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 3) {
        return [self earlyAdoptersReceiveTableView:tableView indexPath:indexPath];
    } else if (indexPath. row == 5) {
        return [self earlyAdoptersReportTitleTableView:tableView indexPath:indexPath];
    } else if (indexPath.row == 6 || indexPath.row == 7) {
        return [self earlyAdoptersReportTableView:tableView indexPath:indexPath];
    } else  if (indexPath.row == 8){
        return [self earlyAdoptersPartitionTableView:tableView indexPath:indexPath];
    } else {
        return [self earlyAdoptersPartitionMoreTableView:tableView indexPath:indexPath];
    }
}
- (void)luckButtonAction:(UIButton *)button {
    if ([self.delegate respondsToSelector:@selector(EarlyAdoptersTheTrialViewControllerShakeAshake)]) {
        [self.delegate EarlyAdoptersTheTrialViewControllerShakeAshake];
    }

}

#pragma mark 自定义cell
- (UITableViewCell *)earlyAdoptersTitleImageTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersTitleImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_TITLEIMAGE_TABLEVIEW_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell startTimer];
    return cell;
}
- (UITableViewCell *)earlyAdoptersInformationTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersInformationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_INFORMATION_TABLEVIEW_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}
- (UITableViewCell *)earlyAdoptersReceiveTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersReceiveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_RECEIVE_TABLEVIEW_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.strengthButton.layer.borderColor = [UIColor colorFromHexCode:@"#48D1CC"].CGColor;
    cell.luckButton.layer.borderColor = [UIColor colorFromHexCode:@"#48D1CC"].CGColor;
    [cell.luckButton addTarget:self action:@selector(luckButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    return cell;

}
- (UITableViewCell *)earlyAdoptersReportTitleTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersReportTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_REPORT_TITLE_TABLEVIEW_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}
- (UITableViewCell *)earlyAdoptersReportTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersReportTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_REPORT_TABLEVIEW_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}
- (UITableViewCell *)earlyAdoptersPartitionTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersPartitionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_PARTITION_TABLEVIEW_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.earlyPartitionTow.backgroundColor = [UIColor whiteColor];
    [cell.moreButton setTitle:@"查看更多" forState:UIControlStateNormal];
    cell.moreButton.layer.borderWidth = 1;
    cell.moreButton.layer.borderColor = [UIColor colorFromHexCode:@"#AAAAAA"].CGColor;
    [cell.moreButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    return cell;

}
- (UITableViewCell *)earlyAdoptersPartitionMoreTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath {
    EarlyAdoptersPartitionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:EARLY_ADOPTERS_PARTITION_TABLEVIEW_CELL];
    cell.earlyPartitionTow.backgroundColor = nil;
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.moreButton setTitle:nil forState:UIControlStateNormal];
    cell.moreButton.layer.borderWidth = 0;
    return cell;
}
@end
