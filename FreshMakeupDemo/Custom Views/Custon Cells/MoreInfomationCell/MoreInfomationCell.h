//
//  MoreInfomationCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MORE_INFOMATION_CELL @"MoreInfomationCell"

@interface MoreInfomationCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *moreInfomationLabel;
@property (weak, nonatomic) IBOutlet UIView *borderView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *borderViewWidthContraint;

- (void)updateWithMoreInfomtionText:(NSString *)text;

@end
