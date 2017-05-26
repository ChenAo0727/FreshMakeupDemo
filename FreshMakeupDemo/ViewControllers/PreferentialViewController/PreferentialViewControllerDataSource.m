//
//  PreferentialViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "PreferentialViewControllerDataSource.h"
#import "PreferentialCell.h"
@implementation PreferentialViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PreferentialCell *cell = [tableView dequeueReusableCellWithIdentifier:PREFERENTIAL_CELL];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell updateImage:self.image];
    return cell;
}
@end
