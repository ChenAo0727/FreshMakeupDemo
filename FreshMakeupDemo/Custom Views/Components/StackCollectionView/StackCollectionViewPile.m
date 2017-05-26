//
//  StackCollectionViewPile.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "StackCollectionViewPile.h"

@interface StackCollectionViewPile ()

@property (nonatomic, assign) CGAffineTransform nextCellTransform;
@property (nonatomic, assign) CGAffineTransform currentCellTransform;

@property (nonatomic, assign) CGFloat nextCellTopSpace;
@property (nonatomic, assign) CGFloat currentCellTopSpace;

@end

@implementation StackCollectionViewPile

#pragma mark - Object Lifecycle

- (id)init {
    self = [super init];
    if (self) {
        _previousCell = nil;
        _currentCell = nil;
        _nextCell = nil;
    }
    return self;
}

- (NSUInteger)maxSize {
    return 3;
}

- (void)reset {
    self.previousCell = nil;
    self.currentCell = nil;
    self.nextCell = nil;
}

- (StackCollectionViewCell *)cellOfIndex:(NSInteger)index {
    StackCollectionViewCell *cell = nil;
    switch (index) {
        case -1:
            cell = self.previousCell;
            break;
        case 0:
            cell = self.currentCell;
            break;
        case 1:
            cell = self.nextCell;
            break;
        default:
            break;
    }
    return cell;
}

- (void)setCell:(StackCollectionViewCell *)cell atIndex:(NSInteger)index {
    switch (index) {
        case -1:
            self.previousCell = cell;
            break;
        case 0:
            self.currentCell = cell;
            break;
        case 1:
            self.nextCell = cell;
            break;
        default:
            break;
    }
}

- (NSInteger)indexOfCell:(StackCollectionViewCell *)cell {
    NSInteger index = 0;
    if (self.currentCell == cell) {
        index = 0;
    } else if (self.nextCell == cell) {
        index = 1;
    } else if (self.previousCell == cell) {
        index = -1;
    }
    return index;
}

- (StackCollectionViewCell *)removeCellOfIndex:(NSInteger)index {
    StackCollectionViewCell *removedCell = [self cellOfIndex:index];
    for (NSInteger i  = index; i < [self maxSize];  i ++) {
        [self setCell:[self cellOfIndex:(i + 1)] atIndex:i];
    }
    return removedCell;
}

- (StackCollectionViewCell *)bringNextCellToTop {
    StackCollectionViewCell *removedCell = self.currentCell;
    self.currentCell = self.nextCell;
    self.nextCell = nil;
    return removedCell;
}

- (StackCollectionViewCell *)bringPreviousCellToBottom {
    StackCollectionViewCell *removedCell = self.currentCell;
    self.currentCell = self.previousCell;
    self.previousCell = nil;
    return removedCell;
}

- (void)beginMovement {
    self.nextCellTransform = self.nextCell ? self.nextCell.transform : CGAffineTransformIdentity;
    self.currentCellTransform = self.currentCell ? self.currentCell.transform : CGAffineTransformIdentity;
    self.nextCellTopSpace = self.nextCell ? self.nextCell.topSpace : 0;
    self.currentCellTopSpace = self.currentCell ? self.currentCell.topSpace : 0;
}

- (void)moveCellVerticallyBy:(CGFloat)movement atIndex:(NSInteger)index {
    StackCollectionViewCell *cell = [self cellOfIndex:index];
    if (cell) {
        [cell updateTopSpace:([self topSpaceOfIndex:index] + movement)];
    }
}

- (void)scaleCellBy:(CGFloat)scale atIndex:(NSInteger)index {
    StackCollectionViewCell *cell = [self cellOfIndex:index];
    if (cell) {
        cell.transform = CGAffineTransformScale([self transformOfIndex:index], scale, scale);
    }
}

- (CGFloat)verticalCellMovementAtIndex:(NSInteger)index {
    CGFloat movement = 0;
    StackCollectionViewCell *cell = [self cellOfIndex:index];
    if (cell) {
        movement = cell.topSpace - [self topSpaceOfIndex:index];
    }
    return movement;
}

#pragma mark - Private Methods

- (CGFloat)topSpaceOfIndex:(NSInteger)index {
    CGFloat topSpace = 0;
    switch (index) {
        case 0:
            topSpace = self.currentCellTopSpace;
            break;
        case 1:
            topSpace = self.nextCellTopSpace;
            break;
        default:
            break;
    }
    return topSpace;
}

- (CGAffineTransform)transformOfIndex:(NSInteger)index {
    CGAffineTransform transform = CGAffineTransformIdentity;
    switch (index) {
        case 1:
            transform = self.nextCellTransform;
            break;
        case 0:
            transform = self.currentCellTransform;
            break;
        default:
            break;
    }
    return transform;
}


@end
