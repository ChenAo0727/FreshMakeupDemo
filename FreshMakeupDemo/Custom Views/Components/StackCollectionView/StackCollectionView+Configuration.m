//
//  StackCollectionView+Configuration.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/18/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "StackCollectionView+Configuration.h"
#import "StackCollectionView+Caculation.h"

#define DEFAULT_CELL_WIDTH 255
#define DEFAULT_CELL_HEIGHT 363
#define DEFAULT_CELL_SCALE 0.92

#define DEFAULT_NEXT_CELL_THRESHOLD 180

#define DEFAULT_CELLS_ALPHA @[@1, @1, @0.5]

@implementation StackCollectionView (Configuration)

- (void)initProperties {
    self.slideMotion = [SlideMotion new];
    self.pile = [StackCollectionViewPile new];
    self.reusabelCellPool = [Pool poolOfMinSize:4 maxSize:8];
    self.reusabelCellIdDictionary = [NSMutableDictionary dictionary];
    self.currentIndex = 0;
    self.numberOfItems = 0;
    self.enabled = YES;
    self.needLoopStack = NO;
    self.needDecelerate = NO;
    self.zoomScale = 1;
    self.nextCellThreshold = DEFAULT_NEXT_CELL_THRESHOLD;
}

- (void)configureView {
    [self configureSlideMotion];
    [self addPanGesture];
}

- (void)updateNumberOfItems {
    self.numberOfItems = [self.dataSource stackCollectionView:self numberOfItemsInSection:0];
}

- (void)increaseCurrentIndex {
    self.currentIndex ++;
    if (self.currentIndex >= self.numberOfItems) {
        self.currentIndex = self.numberOfItems - 1;
    }
}

- (void)decreateCurrentIndex {
    self.currentIndex --;
    if (self.currentIndex <= 0) {
        self.currentIndex = 0;
    }
}

//this funtion maybe error to be fix later
- (void)decreaseCurrentIndexWhenRemoveIndex:(NSInteger)index {
    if (self.currentIndex > index) {
        self.currentIndex--;
    }
    if (self.currentIndex == (self.numberOfItems - 1)) { // deleting last cell
        self.currentIndex = self.needLoopStack ? 0 : (self.currentIndex - 1);
    }
    if (0 > self.currentIndex) {
        self.currentIndex = 0;
    }
}

- (StackCollectionViewCell *)generateNextCell {
    if (self.pile.nextCell) {
        [self.pile.nextCell removeFromSuperview];
    }
    StackCollectionViewCell *cell = [self.dataSource stackCollectionView:self cellForItemAtIndexPath:[NSIndexPath indexPathForItem:[self nextCardIndex] inSection:0]];
    self.pile.nextCell = cell;
    if (cell) {
        cell.alpha = 0;
        [self.contentView insertSubview:cell atIndex:[[self.contentView subviews] count]];
        [self resetCell:cell atIndex:-1];
    }
    return cell;
}

- (StackCollectionViewCell *)generatePreviousCell {
    if (self.pile.previousCell) {
        [self.pile.previousCell removeFromSuperview];
    }
    NSInteger previousCardIndex = [self previousCardIndex];
    StackCollectionViewCell *cell = (self.numberOfItems <= previousCardIndex) ? nil : [self.dataSource stackCollectionView:self cellForItemAtIndexPath:[NSIndexPath indexPathForItem:previousCardIndex inSection:0]];
    self.pile.nextCell = cell;
    if (cell) {
        cell.alpha = (self.currentIndex == previousCardIndex) ? 0 : 0.5;
        [self.contentView insertSubview:cell atIndex:0];
        [self resetCell:cell atIndex:1];
    }
    return cell;
}

- (void)layoutCells {
    [self updateNumberOfItems];
    StackCollectionViewCell *cell = [self.pile cellOfIndex:0];
    if (!cell) {
        cell = [self addCellAtIndex:0];
    }
    cell.alpha = [DEFAULT_CELLS_ALPHA[0] floatValue];
    [self resetCell:cell atIndex:0];
    [self finishDisplayCurrentCell];
}

- (void)layoutPileByPullUpOffset:(CGFloat)offset {
    CGFloat nextCellOffset = [self decelerateDistanceOfPullUpOffset:offset];
    CGFloat underCellOffset = [self offsetOfUnderCellCorrespondToAboveCellPullUpOffset:nextCellOffset];
    self.pile.previousCell.alpha  = [self decelerateAlphaOfPullUpOffset:nextCellOffset];
    [self moveDownNextCellBy:-nextCellOffset];
    [self pushUpCurrentCellBy:underCellOffset];
}

- (void)layoutPileByPullDownOffset:(CGFloat)offset {
    if (self.needLoopStack && 2 > self.numberOfItems) {
        return;
    }
//    if ([self isDisplayingLastCell]) {
    if (/* DISABLES CODE */ (NO)) {
        [self moveDownCurrentCellBy:[self bigDampingDecelerateDistanceOfPullDownOffset:offset]];
    } else {
        CGFloat topCellOffset = [self decelerateDistanceOfPullDownOffset:offset];
        CGFloat middleCellOffset = [self offsetOfUnderCellCorrespondToAboveCellPullDownOffset:topCellOffset];
        self.pile.currentCell.alpha = [self decelerateAlphaOfPullDownOffset:topCellOffset];
        [self moveDownCurrentCellBy:topCellOffset];
        [self popDownMiddleAndBottomCellBy:middleCellOffset];
    }
}

- (void)layoutPileBeforeRecovery {
    [self resetCellConstraint:self.pile.nextCell atIndex:1];
    [self resetCellConstraint:self.pile.currentCell atIndex:0];
}

- (void)layoutPileAfterRecovery {
    self.pile.previousCell.alpha = 0.5;
    self.pile.currentCell.alpha = [DEFAULT_CELLS_ALPHA[0] floatValue];
    [self resetCellTransform:self.pile.currentCell atIndex:0];
}

- (void)layoutPileBeforeBringInPreviousCell {
    [self.pile.currentCell updateTopSpace:self.frame.size.height];
}

- (void)layoutPileAfterBringInPreviousCell {
    self.pile.currentCell.alpha = 0.0;
    self.pile.nextCell.alpha = [DEFAULT_CELLS_ALPHA[1] floatValue];
}

- (void)layoutPileBeforeBringInNextCell {
    [self resetCellConstraint:self.pile.nextCell atIndex:0];
    [self resetCellConstraint:self.pile.currentCell atIndex:1];
}

- (void)layoutPileAfterBringInNextCell {
    self.pile.nextCell.alpha = [DEFAULT_CELLS_ALPHA[0] floatValue];
    self.pile.currentCell.alpha = [DEFAULT_CELLS_ALPHA[1] floatValue];
    [self resetCellTransform:self.pile.previousCell atIndex:0];
    [self resetCellTransform:self.pile.currentCell atIndex:1];
}

- (void)resetCell:(StackCollectionViewCell *)cell atIndex:(NSInteger)index {
    [self resetCellTransform:cell atIndex:index];
    [self resetCellConstraint:cell atIndex:index];
}

- (void)resetCurrentIndex {
    self.currentIndex = 0;
    //  [self updateNumberOfItems];
    //  if (self.currentIndex >= self.numberOfItems) {
    //    self.currentIndex = (self.numberOfItems - 1);
    //  }
}

- (void)removeNextCellFromPile {
    if (self.pile.previousCell) {
        [self removeCell:self.pile.previousCell];
        self.pile.previousCell = nil;
    }
}

- (void)removePreviousAndNextCellFromPile {
    [self removePreviousCellFromPile];
    if (self.pile.nextCell) {
        [self removeCell:self.pile.nextCell];
        self.pile.nextCell = nil;
    }
}

- (void)cleanPileByRemoveCellAtIndex:(NSInteger)index {
    StackCollectionViewCell *cell = [self.pile removeCellOfIndex:index];
    if (cell) {
        [self removeCell:cell];
    }
    [self layoutCells];
}

- (void)cleanPileByBringInPreviousCell {
    StackCollectionViewCell *oldCell = [self.pile bringPreviousCellToTop];
    [self removeCell:oldCell];
    [self finishDisplayTopCell];
}

- (void)cleanPileByBringInNextCell {
    StackCollectionViewCell *oldCell = [self.pile bringNextCellToBottom];
    [self removeCell:oldCell];
    [self finishDisplayTopCell];
}

#pragma mark - Private Methods

- (void)configureSlideMotion {
    self.slideMotion.direction = SlideMotionDirectionDown;
    self.slideMotion.delegate = self;
    self.slideMotion.dataSource = self;
}

- (void)addPanGesture {
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:nil];
    panRecognizer.delegate = self;
    [self addGestureRecognizer:panRecognizer];
}

- (void)addTapRecognizerToCell:(StackCollectionViewCell *)cell {
    for (UIGestureRecognizer *gestureRecognizer in cell.gestureRecognizers) {
        if (gestureRecognizer.delegate == self && [gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
            return; // skip if already attached
        }
    }
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureAction:)];
    tapRecognizer.delegate = self;
    [cell addGestureRecognizer:tapRecognizer];
}

- (void)removeTapRecognizerFromCell:(StackCollectionViewCell *)cell {
    for (UIGestureRecognizer *gestureRecognizer in cell.gestureRecognizers) {
        if (gestureRecognizer.delegate == self && [gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
            [cell removeGestureRecognizer:gestureRecognizer];
            return;
        }
    }
}

- (void)removeCell:(StackCollectionViewCell *)cell {
    if (cell) {
        [cell.layer removeAllAnimations];
        [self removeTapRecognizerFromCell:cell];
        [self.slideMotion detachFromView:cell];
        [cell removeFromSuperview];
        [self.reusabelCellPool putItem:cell key:cell.reuseId tag:[self itemIndexOfPileIndex:[self.pile indexOfCell:cell]]];
        [cell cellDidMoveToReusePool];
    }
}

- (void)resetCellConstraint:(StackCollectionViewCell *)cell atIndex:(NSInteger)index {
    CGFloat topSpace = [self defaultTopCellSpaceAtIndex:index];
    if (0 > index) {
        index = 0;
        topSpace = self.frame.size.height;
    }
    CGFloat scale = self.zoomScale * pow(DEFAULT_CELL_SCALE, index);
    [cell setWidthConstant:DEFAULT_CELL_WIDTH];
    [cell setHeightConstant:DEFAULT_CELL_HEIGHT];
    [cell setTopSpace:topSpace];
    [cell setLeftSpace:(self.frame.size.width - DEFAULT_CELL_WIDTH * scale) / 2];
}

- (void)resetCellTransform:(StackCollectionViewCell *)cell atIndex:(NSInteger)index {
    if (0 > index) {
        index = 0;
    }
    CGFloat scale = self.zoomScale * pow(DEFAULT_CELL_SCALE, index);
    cell.transform = CGAffineTransformScale(CGAffineTransformIdentity, scale, scale);
}

- (StackCollectionViewCell *)addCellAtIndex:(NSUInteger)index {
    StackCollectionViewCell *cell = [self.dataSource stackCollectionView:self cellForItemAtIndexPath:[NSIndexPath indexPathForItem:[self itemIndexOfPileIndex:index] inSection:0]];
    [self.pile setCell:cell atIndex:index];
    [self.contentView insertSubview:cell atIndex:0];
    return cell;
}

- (void)finishDisplayCurrentCell {
    StackCollectionViewCell *cell = self.pile.currentCell;
    if (cell) {
        [self.slideMotion attachToView:cell];
        [self addTapRecognizerToCell:cell];
        if ([self.delegate respondsToSelector:@selector(stackCollectionView:didDisplayCell:)]) {
            [self.delegate stackCollectionView:self didDisplayCell:cell];
        }
    }
}

- (void)moveDownNextCellBy:(CGFloat)movement {
    [self.pile moveCellVerticallyBy:movement atIndex:1];
}

- (void)moveDownCurrentCellBy:(CGFloat)movement {
    [self.pile moveCellVerticallyBy:movement atIndex:0];
}

- (void)pushUpCurrentCellBy:(CGFloat)movement {
    CGFloat scale = [self zoomOutScaleOfUnderCellOffset:movement];
    [self.pile scaleCellBy:scale atIndex:0];
    [self.pile moveCellVerticallyBy:-movement atIndex:0];
    StackCollectionViewCell *cell = [self.pile cellOfIndex:0];
    if (cell) {
        [cell setLeftSpace:(self.frame.size.width - DEFAULT_CELL_WIDTH * self.zoomScale * scale) / 2];
    }
}

- (void)popDownMiddleAndBottomCellBy:(CGFloat)movement {
    CGFloat scale = [self zoomInScaleOfUnderCellOffset:movement];
    for (int i = 1; i <= 2; i++) {
        [self.pile scaleCellBy:scale atIndex:i];
        [self.pile moveCellVerticallyBy:movement atIndex:i];
        StackCollectionViewCell *cell = [self.pile cellOfIndex:i];
        if (cell) {
            CGFloat actualScale = pow(DEFAULT_CELL_SCALE, i) * self.zoomScale * scale;
            [cell setLeftSpace:(self.frame.size.width - DEFAULT_CELL_WIDTH * actualScale) / 2];
        }
    }
}

@end
