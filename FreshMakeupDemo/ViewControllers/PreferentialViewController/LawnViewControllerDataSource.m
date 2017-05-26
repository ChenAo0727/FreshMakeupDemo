//
//  LawnViewControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/9.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "LawnViewControllerDataSource.h"
#import "LawnCell.h"
@implementation LawnViewControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    LawnCell *cell = [tableView dequeueReusableCellWithIdentifier:LAWN_CELL];
    
    return cell;

}

@end
