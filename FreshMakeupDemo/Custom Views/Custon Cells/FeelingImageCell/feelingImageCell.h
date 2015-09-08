//
//  feelingImageCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DottedLineView.h"
#define FEELING_IMAGE_CELL @"feelingImageCell"
@interface feelingImageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet DottedLineView *feelDashedView;
@property (weak, nonatomic) IBOutlet UIImageView *feelImageView;
@property (weak, nonatomic) IBOutlet UIView *feelView;
@property (weak, nonatomic) IBOutlet UILabel *feelllabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *feelingDashedY;
- (void)updateWithFeelImageView:(NSString *)feelImageView Feelllabel:(NSString *)feelllabel;
@end
