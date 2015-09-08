//
//  MoreTitleCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/5.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MORE_TITLE_CELL @"MoreTitleCell"
@interface MoreTitleCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *moreTitleView;

- (void)animateZoomOutMoreTitleViewWithCompletion:(void (^)(BOOL finished))completion;

@end
