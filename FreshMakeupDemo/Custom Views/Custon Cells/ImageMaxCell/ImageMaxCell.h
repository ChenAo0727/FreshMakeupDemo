//
//  ImageMaxCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WorthSlideView.h"

#define IMAGE_MAX_CELL @"ImageMaxCell"

@interface ImageMaxCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *imageMaxLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageMaxImageView;
@property (strong, nonatomic) WorthSlideView *worthSlideView;
- (void)updateWithCoverImage:(UIImage *)image title:(NSString *)title price:(NSString *)price;

@end
