//
//  StackCollectionView+Caculation.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "StackCollectionView.h"

@interface StackCollectionView (Caculation)

- (NSInteger)nextCardIndex;
- (NSInteger)previousCardIndex;
- (NSInteger)visibleCellCount;
- (NSInteger)itemIndexOfPileIndex:(NSInteger)index;
- (NSInteger)pileIndexOfItemIndex:(NSInteger)index;

- (CGFloat)defaultTopCellSpaceAtIndex:(NSInteger)index;

- (CGFloat)decelerateDistanceOfPullUpOffset:(CGFloat)offset;
- (CGFloat)decelerateDistanceOfPullDownOffset:(CGFloat)offset;
- (CGFloat)bigDampingDecelerateDistanceOfPullDownOffset:(CGFloat)offset;

/**
 * Calculate the alpha value of the cell when it moved by offset
 **/
- (CGFloat)decelerateAlphaOfPullUpOffset:(CGFloat)offset;
- (CGFloat)decelerateAlphaOfPullDownOffset:(CGFloat)offset;

/**
 * Calculate the movement offset of the under cell when the above cell moves with the given offset
 **/
- (CGFloat)offsetOfUnderCellCorrespondToAboveCellPullUpOffset:(CGFloat)offset;
- (CGFloat)offsetOfUnderCellCorrespondToAboveCellPullDownOffset:(CGFloat)offset;

- (CGFloat)zoomOutScaleOfUnderCellOffset:(CGFloat)offset;
- (CGFloat)zoomInScaleOfUnderCellOffset:(CGFloat)offset;

- (NSIndexPath *)indexPathOfCell:(StackCollectionViewCell *)cell;

- (BOOL)isTwoCellStack;
- (BOOL)isDisplayingLastCell;

- (BOOL)shouldRecoverPile;
- (BOOL)shouldBringInNextCell;
- (BOOL)shouldBeginPullPreviousCardGesture:(UIPanGestureRecognizer *)gesture;
- (BOOL)hasPreviousCard;
- (BOOL)hasNextCard;

@end
