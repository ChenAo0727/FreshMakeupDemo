//
//  StackCollectionView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/18/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "StackCollectionView.h"
#import "StackCollectionView+Configuration.h"
#import "StackCollectionView+Caculation.h"
#import "Pool.h"

#define DEFAULT_FRESH_OLD_DATA_OFFSET 120

@interface StackCollectionView ()

@property (nonatomic, assign) CGPoint panGestureStartLocation;
@property (nonatomic, assign) BOOL isInGestureAction;

@end

@implementation StackCollectionView

+ (id)create {
    StackCollectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"StackCollectionView" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

#pragma mark UIView Lifecycle 

- (void)awakeFromNib {
    [self initProperties];
    [self configureView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self layoutCells];
}

#pragma mark Get/Set Methods

- (void)setEnabled:(BOOL)enabled {
    _enabled = enabled;
    self.slideMotion.enabled = enabled;
}

#pragma mark Public Methods

- (void)reloadData {
    [self resetPile];
    [self resetCurrentIndex];
    [self layoutCells];
}

- (void)reloadDataForLoadOldDataWithIndex:(int)index {
    [self resetPile];
    self.currentIndex = index;
    [self layoutCells];
}

- (NSArray *)visibleCells {
    NSMutableArray *cells = [NSMutableArray arrayWithCapacity:[self.pile maxSize]];
    for (int i = 0; i < [self.pile maxSize]; i++) {
        StackCollectionViewCell *cell = [self.pile cellOfIndex:i];
        if (cell) {
            [cells addObject:cell];
        }
    }
    return cells;
}

- (CGFloat)frontCellTopSpace {
    return [self defaultTopCellSpaceAtIndex:0];
}

- (StackCollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StackCollectionViewCell *cell = [self.dataSource stackCollectionView:self cellForItemAtIndexPath:[NSIndexPath indexPathForItem:[self nextCardIndex] inSection:0]];
    return cell;
}

- (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier {
    [self.reusabelCellIdDictionary setValue:cellClass forKey:identifier];
}

- (StackCollectionViewCell *)dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath*)indexPath {
    if ([self.reusabelCellPool hasItemOfKey:identifier]) {
        return [self.reusabelCellPool getItemOfKey:identifier tag:indexPath.item];
    }
    Class cellClass = [self.reusabelCellIdDictionary objectForKey:identifier];
    if (cellClass) {
        StackCollectionViewCell *cell = [cellClass performSelector:@selector(create)];
        cell.reuseId = identifier;
        return cell;
    }
    return nil;
}

- (void)deleteItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger index = [self pileIndexOfItemIndex:indexPath.item];
    [self decreaseCurrentIndexWhenRemoveIndex:indexPath.item];
    if (0 <= index && index < [self.pile maxSize]) {
        // update view if needed
        [self cleanPileByRemoveCellAtIndex:index];
    } else {
        [self updateNumberOfItems];
    }
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]) {
        UIPanGestureRecognizer *gesture = (UIPanGestureRecognizer *)gestureRecognizer;
        if (self.enabled && [self shouldBeginPullPreviousCardGesture:gesture]) {
            [gestureRecognizer addTarget:self action:@selector(panGestureAction:)];
        }
    }
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

#pragma mark - PanGestureRecognizer Action

- (void)panGestureAction:(UIPanGestureRecognizer *)gesture {
    switch ([gesture state]) {
        case UIGestureRecognizerStateBegan:{
            [self panGestureDidBegin:gesture];
            break;
        }
            
        case UIGestureRecognizerStateChanged: {
            [self panGestureDidMove:gesture];
            break;
        }
            
        case UIGestureRecognizerStateEnded: {
            [self panGestureDidEnd:gesture];
            break;
        }
            
        case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateFailed:
        case UIGestureRecognizerStatePossible:
            [self panGestureDidEnd:gesture];
            break;
            
        default:
            break;
    }
}

- (void)panGestureDidBegin:(UIPanGestureRecognizer *)gesture {
    self.isInGestureAction = YES;
    self.slideMotion.enabled = NO;
    self.panGestureStartLocation = [gesture locationInView:self];
    BOOL hasPreviousCard = [self hasPreviousCard];
    if ([self hasNextCard]) {
        [self generateNextCell];
    } else {
        [self removeNextCellFromPile];
    }
    if ([self.delegate respondsToSelector:@selector(stackCollectionView:didBeginSlideUpItemAtIndexPath:)]) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:(hasPreviousCard ? [self nextCardIndex] : -1) inSection:0];
        [self.delegate stackCollectionView:self didBeginSlideUpItemAtIndexPath:indexPath];
    }
    [self.pile beginMovement];
}

- (void)panGestureDidMove:(UIPanGestureRecognizer *)gesture {
    CGFloat yOffset = [gesture locationInView:self].y - self.panGestureStartLocation.y;
    [self layoutPileByPullUpOffset:yOffset];
    if ([self.delegate respondsToSelector:@selector(stackCollectionView:didSlideToItemAtIndexPath:)]) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:([self shouldBringInNextCell] ? [self nextCardIndex] : self.currentIndex) inSection:0];
        [self.delegate stackCollectionView:self didSlideToItemAtIndexPath:indexPath];
    }
}

- (void)panGestureDidEnd:(UIPanGestureRecognizer *)gesture {
    if ([self shouldBringInNextCell]) {
        [self animateShowNextCard];
    } else {
        [self animateRecoverPile];
    }
    [gesture removeTarget:self action:@selector(panGestureAction:)];
    self.slideMotion.enabled = YES;
    if ([self.delegate respondsToSelector:@selector(stackCollectionViewDidEndSlideUp:)]) {
        [self.delegate stackCollectionViewDidEndSlideUp:self];
    }
}

#pragma mark - TapGestureRecognizer Action

- (void)tapGestureAction:(UIPanGestureRecognizer *)gesture {
    if (self.isInGestureAction || !self.enabled) {
        return;
    }
    if ([self.delegate respondsToSelector:@selector(stackCollectionView:didSelectItem:atIndexPath:)]) {
        StackCollectionViewCell *item = (StackCollectionViewCell *)[gesture view];
        NSIndexPath *indexPath = [self indexPathOfCell:(StackCollectionViewCell *)[gesture view]];
        [self.delegate stackCollectionView:self didSelectItem:item atIndexPath:indexPath];
    }
}

#pragma mark SlideMotionDelegate

- (void)slideMotion:(SlideMotion *)slideMotion willBeginSlideView:(UIView *)view {
    self.isInGestureAction = YES;
    [self generatePreviousCell];
    [self.pile beginMovement];
}

- (void)slideMotion:(SlideMotion *)slideMotion didBeginSlideView:(UIView *)view {
    if ([self.delegate respondsToSelector:@selector(stackCollectionView:didBeginSlideDownItemAtIndexPath:)]) {
        NSIndexPath *indexPath = [self indexPathOfCell:(StackCollectionViewCell *)view];
        [self.delegate stackCollectionView:self didBeginSlideDownItemAtIndexPath:indexPath];
    }
}

- (BOOL)slideMotion:(SlideMotion *)slideMotion shouldSlideView:(UIView *)view withOffset:(CGFloat)offset {
    BOOL shouldSlide = YES;
    if (offset >= DEFAULT_FRESH_OLD_DATA_OFFSET) {
        if ([self.delegate respondsToSelector:@selector(stackcollectionviewNeedContinueSlideCrossTriggerPoint:AtIndexPath:)]) {
            NSIndexPath *indexPath = [self indexPathOfCell:(StackCollectionViewCell *)view];
            if ([self.delegate stackcollectionviewNeedContinueSlideCrossTriggerPoint:self AtIndexPath:indexPath]) {
                shouldSlide = NO;
            }
        }
    } else {
        shouldSlide = 0 < offset;
    }
    return shouldSlide;
}

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    [self layoutPileByPullDownOffset:offset];
    if ([self.delegate respondsToSelector:@selector(stackCollectionView:didSlideToItemAtIndexPath:)]) {
        if ([self shouldRecoverPile]) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:self.currentIndex inSection:0];
            [self.delegate stackCollectionView:self didSlideToItemAtIndexPath:indexPath];
        } else {
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:[self itemIndexOfPileIndex:([self pileIndexOfItemIndex:self.currentIndex] + 1)] inSection:0];
            [self.delegate stackCollectionView:self didSlideToItemAtIndexPath:indexPath];
        }
    }
}

- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    if (![self hasPreviousCard] || [self shouldRecoverPile]) {
        [self animateRecoverPile];
    } else {
        [self animateShowPreviousCard];
    }
    if ([self.delegate respondsToSelector:@selector(stackCollectionViewDidEndSlideDown:)]) {
        [self.delegate stackCollectionViewDidEndSlideDown:self];
    }
    if ([self.delegate respondsToSelector:@selector(stackCollectionView:didEndSlideDownItemAtIndexPath:)]) {
        NSIndexPath *indexPath = [self indexPathOfCell:(StackCollectionViewCell *)view];
        [self.delegate stackCollectionView:self didEndSlideDownItemAtIndexPath:indexPath];
    }
}

#pragma mark SlideMotionDataSource

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self;
}

#pragma mark Private Methods

- (void)animateRecoverPile {
    [self layoutPileBeforeRecovery];
    [UIView animateWithDuration:0.2 animations:^{
        [self layoutIfNeeded];
        [self layoutPileAfterRecovery];
    } completion:^(BOOL finished) {
        [self removePreviousAndNextCellFromPile];
        self.isInGestureAction = NO;
    }];
}

- (void)animateShowPreviousCard {
    [self layoutPileBeforeBringInPreviousCell];
    [UIView animateWithDuration:0.2 animations:^{
        [self layoutIfNeeded];
        [self layoutPileAfterBringInPreviousCell];
    } completion:^(BOOL finished) {
        [self decreateCurrentIndex];
        [self cleanPileByBringInPreviousCell];
        self.isInGestureAction = NO;
    }];
}

- (void)animateShowNextCard {
    [self layoutPileBeforeBringInNextCell];
    [UIView animateWithDuration:0.2 animations:^{
        [self layoutIfNeeded];
        [self layoutPileAfterBringInNextCell];
    } completion:^(BOOL finished) {
        [self increaseCurrentIndex];
        [self cleanPileByBringInNextCell];
        self.isInGestureAction = NO;
    }];
}

@end
