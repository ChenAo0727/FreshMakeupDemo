//
//  ProductiDescriptionCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 9/5/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>


#define USER_FELLING_CELL @"ProductiDescriptionCell"
@interface ProductiDescriptionCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *contentImageView;
@property (weak, nonatomic) IBOutlet UIView *moreInfomationContainerView;
@property (weak, nonatomic) IBOutlet UIView *moreInfomationBorderView;
@property (weak, nonatomic) IBOutlet UILabel *moreInfomationLabel;

- (CGSize)sizeOfCell;
- (void)updateIsFeeling:(BOOL)isFeeling;

@end
