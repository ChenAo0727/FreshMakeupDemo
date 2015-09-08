//
//  FeelingTextCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DottedLineView.h"
@interface FeelingTextCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *LableImageView;
@property (weak, nonatomic) IBOutlet DottedLineView *bottomDottedLineView;

@property (weak, nonatomic) IBOutlet UILabel *FeelingTextLabel;
@property (assign, nonatomic)BOOL isHideLableImage;
@property (weak, nonatomic) IBOutlet DottedLineView *TopDottedLineView;

- (void)updateFeelingTextLabel:(NSString *)text;
@end
