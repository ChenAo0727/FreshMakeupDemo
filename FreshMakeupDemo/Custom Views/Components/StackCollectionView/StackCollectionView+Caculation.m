//
//  StackCollectionView+Caculation.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/18/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "StackCollectionView+Caculation.h"
#define DEFAULT_DECELERATE_RATIO 0.5
#define DEFAULT_CELL_SPACE 5
#define DEFAULT_CELL_SCALE 0.92
#define DEFAULT_TOP_PADDING 0
#define DEFAULT_DECELERATE_ALPHA 0.3
#define DEFAULT_PAN_TRIGGER_HEIGHT 90
#define DEFAULT_PAN_TRIGGER_WIDTH 255
#define DEFAULT_PAN_TRIGGER_SENSITIVITY 1.15

#define DEFAULT_UNDER_CELL_MOVE_RATIO_MIN 0.25
#define DEFAULT_UNDER_CELL_MOVE_RATIO_MAX 0.75
#define DEFAULT_UNDER_CELL_MOVE_SCALE_MAX 0.06

@implementation StackCollectionView (Caculation)

#pragma mark - Public Methods

- (NSInteger)nextCardIndex {
    NSInteger index = self.currentIndex + 1;
    return (index > self.numberOfItems - 1) ? (self.numberOfItems - 1) : index;
}

- (NSInteger)previousCardIndex {
    NSInteger index = self.currentIndex - 1;
    return (index < 0) ? 0 : index;
}

- (NSInteger)visibleCellCount {
    return 1;
}

- (NSInteger)itemIndexOfPileIndex:(NSInteger)index {
    index += self.currentIndex;
    if (index >= self.numberOfItems) {
        index = self.numberOfItems;
    }
    return index;
}

- (NSInteger)pileIndexOfItemIndex:(NSInteger)index {
    index -= self.currentIndex;
    if (index < 0) {
        index = 0;
    }
    return index;
}

- (CGFloat)defaultTopCellSpaceAtIndex:(NSInteger)index {
    return DEFAULT_TOP_PADDING - (DEFAULT_CELL_SPACE * index);
}

- (CGFloat)decelerateDistanceOfPullUpOffset:(CGFloat)offset {
    if (0 < offset) {
        return 0;
    }
    if (!self.needDecelerate) {
        return fabs(offset);
    }
    CGFloat threshold = self.frame.size.height;
    CGFloat decelerate = threshold - [self defaultTopCellSpaceAtIndex:0];
    offset = threshold < fabs(offset) ? threshold : fabs(offset);
    return decelerate * (1 - powf((threshold - offset) / threshold, 2));
}

- (CGFloat)decelerateDistanceOfPullDownOffset:(CGFloat)offset {
    if (!self.needDecelerate) {
        return fabs(offset);
    }
    CGFloat threshold = self.nextCellThreshold;
    CGFloat decelerate = threshold * DEFAULT_DECELERATE_RATIO;
    CGFloat overflow = threshold < fabs(offset) ? (fabs(offset) - threshold) : 0;
    offset = 0 < overflow ? threshold : fabs(offset);
    return decelerate * (1 - powf((threshold - offset) / threshold, 2)) + overflow;
}

- (CGFloat)decelerateAlphaOfPullUpOffset:(CGFloat)offset {
    CGFloat threshold = self.frame.size.height - [self defaultTopCellSpaceAtIndex:0];
    CGFloat ratio = (threshold < offset) ? 1 : offset / threshold;
    return (1 - DEFAULT_DECELERATE_ALPHA) + ratio * DEFAULT_DECELERATE_ALPHA;
}

- (CGFloat)decelerateAlphaOfPullDownOffset:(CGFloat)offset {
    CGFloat threshold = self.nextCellThreshold;
    CGFloat ratio = (threshold < offset) ? 1 : offset / threshold;
    return 1 - ratio * DEFAULT_DECELERATE_ALPHA;
}

- (CGFloat)offsetOfUnderCellCorrespondToAboveCellPullUpOffset:(CGFloat)offset {
    CGFloat threshold = self.frame.size.height - [self defaultTopCellSpaceAtIndex:0];
    CGFloat ratio = (threshold < offset) ? 1 : offset / threshold;
    return DEFAULT_CELL_SPACE * ratio;
}

- (CGFloat)offsetOfUnderCellCorrespondToAboveCellPullDownOffset:(CGFloat)offset {
    CGFloat minThreshold = self.nextCellThreshold * (self.needDecelerate ? DEFAULT_DECELERATE_RATIO : 1) * DEFAULT_UNDER_CELL_MOVE_RATIO_MIN;
    CGFloat maxThreshold = self.nextCellThreshold * (self.needDecelerate ? DEFAULT_DECELERATE_RATIO : 1) * DEFAULT_UNDER_CELL_MOVE_RATIO_MAX;
    if (offset < minThreshold) {
        return 0;
    }
    if (offset > maxThreshold) {
        return DEFAULT_CELL_SPACE;
    }
    return DEFAULT_CELL_SPACE * (offset - minThreshold) / (maxThreshold - minThreshold);
}

- (CGFloat)zoomOutScaleOfUnderCellOffset:(CGFloat)offset {
    return 1 / [self zoomInScaleOfUnderCellOffset:offset];
}

- (CGFloat)zoomInScaleOfUnderCellOffset:(CGFloat)offset {
    return 1 + DEFAULT_UNDER_CELL_MOVE_SCALE_MAX * offset / DEFAULT_CELL_SPACE;
}

- (NSIndexPath *)indexPathOfCell:(StackCollectionViewCell *)cell {
    return [NSIndexPath indexPathForItem:[self itemIndexOfPileIndex:[self.pile indexOfCell:cell]] inSection:0];
}

- (BOOL)isTwoCellStack {
    return 2 == self.numberOfItems;
}

- (BOOL)shouldRecoverPile {
    CGFloat movement = [self.pile verticalCellMovementAtIndex:0];
    return movement < self.nextCellThreshold * DEFAULT_DECELERATE_RATIO;
}

- (BOOL)shouldBringInNextCell {
    if (!self.pile.nextCell) {
        return NO;
    }
    CGFloat movement = fabs([self.pile verticalCellMovementAtIndex:1]);
    return movement > DEFAULT_PAN_TRIGGER_HEIGHT;
}

- (BOOL)shouldBeginPullPreviousCardGesture:(UIPanGestureRecognizer *)gesture {
    CGPoint velocity = [gesture velocityInView:self];
    if (0 <= velocity.y || ABS(velocity.x * DEFAULT_PAN_TRIGGER_SENSITIVITY) > ABS(velocity.y)) {
        return NO; // not panning up
    }
    CGPoint location = [gesture locationInView:self];
    return [self isPullPreviousCardAreaContains:location];
}

- (BOOL)hasPreviousCard {
    if (self.currentIndex > 0) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)hasNextCard {
    return self.currentIndex < self.numberOfItems - 1;
}


#pragma mark - Private Methods

- (BOOL)isPullPreviousCardAreaContains:(CGPoint)location {
    CGSize size = self.frame.size;
    return (location.y > DEFAULT_PAN_TRIGGER_HEIGHT / 3) && (location.x > (size.width - DEFAULT_PAN_TRIGGER_WIDTH) / 2) && (location.x < (size.width + DEFAULT_PAN_TRIGGER_WIDTH) / 2);
}


@end
