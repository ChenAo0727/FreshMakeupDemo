//
//  TrialCollectionViewCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define TRIAL_COLLECTION_VIEW_CELL @"TrialCollectionViewCell"


@interface TrialCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *contextView;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageVIew;
@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIImageView *watchImageView;
@property (weak, nonatomic) IBOutlet UILabel *watchCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *approveCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *approveImageView;

- (void)updateWithAvatarImage:(UIImage *)image nickName:(NSString *)nickName time:(NSString *)time coverImage:(UIImage *)coverImage description:(NSString *)description watchCount:(NSInteger)watchCount approveCount:(NSInteger)approveCount;

@end
