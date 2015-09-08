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
    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 1 || indexPath.row % 2 == 1) {
        feelingImageCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_IMAGE_CELL];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        [cell updateWithFeelImageView:@"detail_introduction_image.png" Feelllabel:@""];
        return cell;
    } else {
        FeelingTextCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_TEXT_CELL];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return cell;
    }
}
@end
