//
//  StackCollectionViewPile.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackCollectionViewCell.h"

@interface StackCollectionViewPile : NSObject

@property (strong, nonatomic) StackCollectionViewCell *previousCell;
@property (strong, nonatomic) StackCollectionViewCell *currentCell;
@property (strong, nonatomic) StackCollectionViewCell *nextCell;

- (NSUInteger)maxSize;

- (void)reset;

- (StackCollectionViewCell *)cellOfIndex:(NSInteger)index;
- (void)setCell:(StackCollectionViewCell *)cell atIndex:(NSInteger)index;
- (NSInteger)indexOfCell:(StackCollectionViewCell *)cell;

- (StackCollectionViewCell *)removeCellOfIndex:(NSInteger)index;

- (StackCollectionViewCell *)bringNextCellToTop;

- (StackCollectionViewCell *)bringPreviousCellToBottom;

- (void)beginMovement;

- (void)moveCellVerticallyBy:(CGFloat)movement atIndex:(NSInteger)index;
- (void)scaleCellBy:(CGFloat)scale atIndex:(NSInteger)index;

- (CGFloat)verticalCellMovementAtIndex:(NSInteger)index;

@end
