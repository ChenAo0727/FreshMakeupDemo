//
//  FeelIngViwControllerDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelIngViwControllerDataSource.h"
#import "feelingImageCell.h"
@implementation FeelIngViwControllerDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    feelingImageCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_IMAGE_CELL];
    [cell updateWithFeelImageView:@"detail_introduction_image.png" Feelllabel:@""];
    return cell;
    
}
@end
