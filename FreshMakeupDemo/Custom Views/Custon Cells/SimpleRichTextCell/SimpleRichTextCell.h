//
//  SimpleRichTextCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SIMPLE_RICH_TEXTCELL @"SimpleRichTextCell"

@interface SimpleRichTextCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

- (void)updateWithCoverImage:(UIImage *)coverImage contentText:(NSString *)contentText;
- (CGSize)sizeOfCell;

@end
