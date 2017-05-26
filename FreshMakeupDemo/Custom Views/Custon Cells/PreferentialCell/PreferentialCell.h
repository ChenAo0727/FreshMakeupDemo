//
//  PreferentialCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PREFERENTIAL_CELL @"PreferentialCell"
@interface PreferentialCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage;

- (void)updateImage:(UIImage *)image;

@end
