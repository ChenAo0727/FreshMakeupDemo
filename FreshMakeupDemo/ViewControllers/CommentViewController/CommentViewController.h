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

@class CommentViewLayout;
@interface CommentViewController : BaseViewController<UICollectionViewDataSource,CHTCollectionViewDelegateWaterfallLayout>
@property(nonatomic,strong)UICollectionView *collectionView;
@property(nonatomic,strong)CHTCollectionViewWaterfallLayout *layout;


@end
