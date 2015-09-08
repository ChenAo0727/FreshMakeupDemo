//
//  feelingImageCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define FEELING_IMAGE_CELL @"feelingImageCell"
@interface feelingImageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *feelDashedImageView;
@property (weak, nonatomic) IBOutlet UIImageView *feelImageView;
@property (weak, nonatomic) IBOutlet UIView *feelView;
@property (weak, nonatomic) IBOutlet UILabel *feelllabel;
- (void)updateWithFeelImageView:(NSString *)feelImageView Feelllabel:(NSString *)feelllabel;
@end
