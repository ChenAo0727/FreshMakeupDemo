//
//  DetailViewController.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BaseViewController.h"
#import "SelectionView.h"
#import "CHTCollectionViewWaterfallLayout.h"
#import "ProductDetailDataSource.h"
#import "ZoomFadeTransition.h"

@interface DetailViewController : BaseViewController<CHTCollectionViewDelegateWaterfallLayout, UIViewControllerTransitioningDelegate,ProductDetailDataSourceDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *detailITitleImageView;

@property (weak, nonatomic) IBOutlet UIView *topViewContainer;
@property (weak, nonatomic) IBOutlet UICollectionView *detailCollectionView;
@property (strong, nonatomic) ProductDetailDataSource *productDetailDataSource;
@property (strong, nonatomic) CHTCollectionViewWaterfallLayout *layout;
@property (strong, nonatomic) SelectionView *selectionView;
@property (assign, nonatomic) CGFloat selectionViewY;
@property (strong, nonatomic) ZoomFadeTransition *zoomFadeTransition;

- (void)updateDatasourceWithDetailTool:(DetailInfomationTool *)detailInfomationTool;

@end
