//
//  DetailViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailViewController+Configuration.h"
#import "FeatureDescriptionCell.h"
#import "TrialCollectionViewCell.h"
#import "BaseInfomationCelll.h"
#import "MoreInfomationCell.h"
#import "CopywriterCell.h"
#import "CommentCell.h"
#import "OwnerSayCell.h"
#import "ImageCell.h"
#import "TitleCell.h"
#import "DetailInfomationTool.h"
@implementation DetailViewController (Configuration)

- (void)updateSelectionViewY {
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:0 inSection:4];
    TitleCell *cell = [self.detailCollectionView dequeueReusableCellWithReuseIdentifier:TITLE_CELL forIndexPath:indexPath];
    CGRect frame = cell.frame;
    self.selectionViewY = frame.origin.y + frame.size.height;
}

- (void)configureViews {
    [self configureWaterFlowLayout];
    [self configureDateSource];
    [self configureCollectionView];
    [self addSelectionView];
}

- (void)configureDateSource {
    self.detailCollectionViewDatasource = [DetailCollectionViewDatasource new];
}

- (void)configureWaterFlowLayout {
    self.layout = [[CHTCollectionViewWaterfallLayout alloc] init];
    self.layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5);
    self.layout.headerHeight = 0;
    self.layout.footerHeight = 0;
    self.layout.minimumColumnSpacing = 0;
    self.layout.minimumInteritemSpacing = 0;
}

- (void)configureCollectionView {
    self.detailCollectionView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.detailCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    NSDictionary *nibDictionary = @{BASE_INFO_CELL : @"BaseInfomationCell", OWNER_SAY_CELL : @"OwnerSayCell", TITLE_CELL : @"TitleCell", IMAGE_CELL : @"ImageCell", MORE_INFOMATION_CELL : @"MoreInfomationCell", FEATURE_DESCRIPTION_CELL : @"FeatureDescriptionCell", COMMENT_CELL : @"CommentCell", COPY_WRITER_CELL : @"CopywriterCell", TRIAL_COLLECTION_VIEW_CELL : @"TrialCollectionViewCell"};
    [self registerNibWithDictionaty:nibDictionary];
    [self.detailCollectionView setCollectionViewLayout:self.layout];
    DetailInfomationTool *detailInfomationTool = [[DetailInfomationTool alloc] initWithYaDunInfomation];
    self.detailCollectionViewDatasource.detailInfomationTool = detailInfomationTool;
    self.detailCollectionView.dataSource = self.detailCollectionViewDatasource;
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
