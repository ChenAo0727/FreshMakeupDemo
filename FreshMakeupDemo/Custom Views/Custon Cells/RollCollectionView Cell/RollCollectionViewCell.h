//
//  RollCollectionViewCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ROLL_COLLECTIONVIEW_CELL @"RollCollectionViewCell"
@interface RollCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *rollImageView;
@property (strong, nonatomic) IBOutlet UILabel *rollLabel;
@property (strong, nonatomic) IBOutlet UILabel *rollDiscussionLabel;

@end
