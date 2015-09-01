//
//  DetailCommentCellTableViewCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define DETAIL_COMMENT_CELL @"DetailCommentCell"

@interface DetailCommentCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *userTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *skinTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *landlordLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UILabel *floorCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *bottomLineImageView;

- (CGFloat)heightOfCell;

@end
