//
//  StackCollectionView+Configuration.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "StackCollectionView.h"

@interface StackCollectionView (Configuration)

- (void)initProperties;
- (void)configureView;
- (void)updateNumberOfItems;

- (void)increaseCurrentIndex;
- (void)decreateCurrentIndex;
- (void)decreaseCurrentIndexWhenRemoveIndex:(NSInteger)index;

- (StackCollectionViewCell *)generateNextCell;
- (StackCollectionViewCell *)generatePreviousCell;

- (void)layoutCells;
- (void)layoutPileByPullUpOffset:(CGFloat)offset; // pull up to show next card
- (void)layoutPileByPullDownOffset:(CGFloat)offset; // pull down to show previous card
- (void)layoutPileBeforeRecovery;
- (void)layoutPileAfterRecovery;
- (void)layoutPileBeforeBringInPreviousCell;
- (void)layoutPileAfterBringInPreviousCell;
- (void)layoutPileBeforeBringInNextCell;
- (void)layoutPileAfterBringInNextCell;

- (void)resetPile;
- (void)resetCell:(StackCollectionViewCell *)cell atIndex:(NSInteger)index;
- (void)resetCurrentIndex;

- (void)removeNextCellFromPile;
- (void)removePreviousAndNextCellFromPile;

- (void)cleanPileByRemoveCellAtIndex:(NSInteger)index;
- (void)cleanPileByBringInPreviousCell;
- (void)cleanPileByBringInNextCell;

@end
