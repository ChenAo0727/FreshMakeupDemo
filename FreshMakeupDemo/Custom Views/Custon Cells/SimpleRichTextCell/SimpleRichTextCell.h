//
//  SimpleRichTextCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 9/4/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SIMPLE_RICH_TEXTCELL @"SimpleRichTextCell"

@interface SimpleRichTextCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverImageViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverImageViewRightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moreViewHeightConstraint;
@property (weak, nonatomic) IBOutlet UIView *moreTitleView;

- (void)updateWithCoverImage:(UIImage *)coverImage contentText:(NSString *)contentText isFeeling:(BOOL)isFeeling;
- (CGSize)sizeOfCell;

@end
