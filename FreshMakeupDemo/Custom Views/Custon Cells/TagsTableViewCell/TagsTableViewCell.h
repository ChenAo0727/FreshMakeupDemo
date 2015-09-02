//
//  TagsTableViewCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SGSStaggeredFlowLayout.h"

#define TAGS_TABLEVIEW_CELL @"TagsTableViewCell"

@interface TagsTableViewCell : UITableViewCell <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *tagCollectionView;
@property SGSStaggeredFlowLayout *staggeredFlowLayout;
- (CGFloat)heightOfCell;

@end
