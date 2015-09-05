//
//  BaseInfomationCell
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BASE_INFO_CELL @"BaseInfomationCell"

@interface BaseInfomationCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentCountLabel;
@property (weak, nonatomic) IBOutlet UIView *bottomView;

- (CGFloat)heightOfCell;
- (void)updateWithTitleLabel:(NSString *)label;
@end
