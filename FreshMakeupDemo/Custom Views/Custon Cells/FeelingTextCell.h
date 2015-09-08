//
//  FeelingTextCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DottedLineView.h"
#define FEELING_TEXT_CELL @"feelingTextCell"

@interface FeelingTextCell : UITableViewCell
@property (weak, nonatomic) IBOutlet DottedLineView *dottedLine;
@property (weak, nonatomic) IBOutlet UIImageView *LabelImage;


@property (weak, nonatomic) IBOutlet UILabel *FeelingTextLabel;
@property (assign, nonatomic)BOOL isHideLableImage;

- (void)updateFeelingTextLabel:(NSString *)text;

@end
