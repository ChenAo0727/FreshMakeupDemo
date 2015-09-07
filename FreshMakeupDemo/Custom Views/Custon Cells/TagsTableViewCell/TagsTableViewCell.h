//
//  TagsTableViewCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SGSStaggeredFlowLayout.h"
#import "EqualSpaceFlowLayout.h"

#define TAGS_TABLEVIEW_CELL @"TagsTableViewCell"

@interface TagsTableViewCell : UITableViewCell <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *tagCollectionView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *collectionViewHeightConstraint;
@property (strong, nonatomic) EqualSpaceFlowLayout *equalSpaceFlowLayout;
- (CGFloat)heightOfCell;
- (void)updateHeightConstraint;
- (void)updateWithTage:(NSArray *)tags;
@end
