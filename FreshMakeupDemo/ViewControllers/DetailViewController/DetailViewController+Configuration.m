//
//  DetailViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailViewController+Configuration.h"
#import "DetailBaseInfomationCell.h"
#import "SimpleRichTextCell.h"
#import "EvaluationCell.h"
#import "DetailInfomationTool.h"
@implementation DetailViewController (Configuration)

- (void)updateSelectionViewY {
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:2 inSection:0];
    EvaluationCell *cell = [self.detailCollectionView dequeueReusableCellWithReuseIdentifier:EVALUATION_CELL forIndexPath:indexPath];
    CGRect frame = cell.frame;
    self.selectionViewY = frame.origin.y + cell.mySegmentControl.frame.origin.y
    + cell.mySegmentControl.frame.size.height + 10;
}

- (void)configureViews {
    [self configureWaterFlowLayout];
    [self configureDateSource];
    [self configureCollectionView];
    [self addSelectionView];
}

- (void)configureDateSource {
    self.productDetailDataSource = [ProductDetailDataSource new];
}

- (void)configureWaterFlowLayout {
    self.layout = [[CHTCollectionViewWaterfallLayout alloc] init];
    self.layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.layout.headerHeight = 0;
    self.layout.footerHeight = 0;
    self.layout.minimumColumnSpacing = 0;
    self.layout.minimumInteritemSpacing = 0;
}

- (void)configureCollectionView {
    self.detailCollectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.detailCollectionView registerNib:[UINib nibWithNibName:@"DetailBaseInfomationCell" bundle:nil] forCellWithReuseIdentifier:DETAIL_BASE_COLLECTION_VIEW_CELL];
    [self.detailCollectionView registerNib:[UINib nibWithNibName:@"SimpleRichTextCell" bundle:nil] forCellWithReuseIdentifier:SIMPLE_RICH_TEXTCELL];
    [self.detailCollectionView registerNib:[UINib nibWithNibName:@"EvaluationCell" bundle:nil] forCellWithReuseIdentifier:EVALUATION_CELL];
    [self.detailCollectionView setCollectionViewLayout:self.layout];
    DetailInfomationTool *detailInfomationTool = [[DetailInfomationTool alloc] initWithYaDunInfomation];
    self.productDetailDataSource.detailInfomationTool = detailInfomationTool;
    self.detailCollectionView.alwaysBounceVertical = YES;
    self.detailCollectionView.dataSource = self.productDetailDataSource;
    self.detailCollectionView.delegate = self;
}

- (void)addSelectionView {
    self.selectionView = [SelectionView create];
    [self.view insertSubview:self.selectionView belowSubview:self.topViewContainer];
    [self.selectionView setLeftSpace:0];
    [self.selectionView setRightSpace:0];
    [self.selectionView setBottomSpace:0];
    [self.selectionView setHeightConstant:54];
}

- (void)registerNibWithDictionaty:(NSDictionary *)dictionary {
    NSEnumerator * enumeratorKey = [dictionary keyEnumerator];
    for (NSString *identifier in enumeratorKey) {
        [self.detailCollectionView registerNib:[UINib nibWithNibName:[dictionary objectForKey:identifier] bundle:nil] forCellWithReuseIdentifier:identifier];
    }
}

@end
