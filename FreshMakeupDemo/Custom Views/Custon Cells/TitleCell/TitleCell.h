//
//  TitleCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/21/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define TITLE_CELL @"TitleCell"

@interface TitleCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (CGFloat)heightOfCell;
- (void)updateWithTitleText:(NSString *)titleText;

@end
