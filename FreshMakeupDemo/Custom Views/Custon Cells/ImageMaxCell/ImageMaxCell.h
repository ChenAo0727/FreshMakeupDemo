//
//  ImageMaxCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define IMAGE_MAX_CELL @"ImageMaxCell"
@interface ImageMaxCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *imageMaxLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageMaxImageView;

@end
