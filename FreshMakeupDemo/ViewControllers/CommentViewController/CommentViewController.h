//
//  CommentViewController.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "CHTCollectionViewWaterfallLayout.h"
#import "DetailCommentView.h"
#import "CommentCell.h"
#import "CommentInfomationTool.h"

@class CommentViewLayout;
@interface CommentViewController : BaseViewController<UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout, CommentCellDelegate>

@property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) CHTCollectionViewWaterfallLayout *layout;
@property (strong, nonatomic) DetailCommentView *detailCommentView;
@property (strong, nonatomic) NSArray *comments;

@end
