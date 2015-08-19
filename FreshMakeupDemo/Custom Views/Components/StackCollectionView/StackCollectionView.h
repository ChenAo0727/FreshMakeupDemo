//
//  StackCollectionView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/18/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "StackCollectionViewPile.h"
#import "SlideMotion.h"
#import "Pool.h"

@protocol StackCollectionViewDelegate;
@protocol StackCollectionViewDataSource;

@interface StackCollectionView : AutoLayoutView <SlideMotionDataSource, SlideMotionDelegate, UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (assign, nonatomic) BOOL enabled;
@property (assign, nonatomic) BOOL needDecelerate;
@property (assign, nonatomic) BOOL needLoopStack;
@property (assign, nonatomic) CGFloat zoomScale;
@property (assign, nonatomic) CGFloat nextCellThreshold;

@property (nonatomic, assign) NSInteger currentIndex;
@property (nonatomic, assign) NSInteger numberOfItems;

@property (nonatomic, strong) SlideMotion *slideMotion;
@property (nonatomic, strong) StackCollectionViewPile *pile;

@property (nonatomic, strong) Pool *reusabelCellPool;
@property (nonatomic, strong) NSMutableDictionary *reusabelCellIdDictionary;

@property (nonatomic, weak) id<StackCollectionViewDelegate> delegate;
@property (nonatomic, weak) id<StackCollectionViewDataSource> dataSource;

- (void)relodData;
- (void)reloadDataForLoadOldDataWithIndex:(int)index;
- (NSArray *)visibleCells;
- (CGFloat)frontCellTopSpace;

- (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier;
- (StackCollectionViewCell *)dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;

- (void)deleteItemAtIndexPath:(NSIndexPath *)indexPath;

- (void)panGestureAction:(UIPanGestureRecognizer *)gesture;
- (void)tapGestureAction:(UIPanGestureRecognizer *)gesture;

@end

@protocol StackCollectionViewDelegate <NSObject>

@optional
- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didSelectItem:(StackCollectionViewCell *)item atIndexPath:(NSIndexPath *)indexPath;
- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didBeginSlideDownItemAtIndexPath:(NSIndexPath *)indexPath;
- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didBeginSlideUpItemAtIndexPath:(NSIndexPath *)indexPath;
- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didSlideToItemAtIndexPath:(NSIndexPath *)indexPath;
- (void)stackCollectionViewDidEndSlideDown:(StackCollectionView *)stackCollectionView;
- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didEndSlideDownItemAtIndexPath:(NSIndexPath *)indexPath;
- (BOOL)stackcollectionviewNeedContinueSlideCrossTriggerPoint:(StackCollectionView *)stackCollectionView AtIndexPath:(NSIndexPath *)indexPath;
- (void)stackCollectionViewDidEndSlideUp:(StackCollectionView *)stackCollectionView;
- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didDisplayCell:(StackCollectionViewCell *)cell;

@end


@protocol StackCollectionViewDataSource <NSObject>

@required
- (NSInteger)stackCollectionView:(StackCollectionView *)stackCollectionView numberOfItemsInSection:(NSInteger)section;
- (StackCollectionViewCell *)stackCollectionView:(StackCollectionView *)stackCollectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;

@optional
@end