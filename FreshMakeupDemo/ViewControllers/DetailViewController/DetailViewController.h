//
//  DetailViewController.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BaseViewController.h"
#import "CHTCollectionViewWaterfallLayout.h"

@interface DetailViewController : BaseViewController<UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *detailCollectionView;
@property (strong, nonatomic) CHTCollectionViewWaterfallLayout *layout;

@end
