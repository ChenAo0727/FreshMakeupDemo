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
    return self.feelingInformationTool.feelIngArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row] objectForKey:@"image"]) {
      feelingImageCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_IMAGE_CELL];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        [cell updateWithFeelImageView:[[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row ] objectForKey:@"image"] Feelllabel:[[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row ] objectForKey:@"hasTag"]];
        return cell;

        
    } else {
        FeelingTextCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_TEXT_CELL];
        [cell updateFeelingTextLabel:[[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row] objectForKey:@"text"]];
        return cell;
    }

}
@end
