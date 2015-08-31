//
//  CommentViewLayout.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/8/25.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "CommentViewLayout.h"

@implementation CommentViewLayout

static const NSInteger unionSize = 20;
static CGFloat CGFloatScale(CGFloat value) {
    CGFloat scale = [UIScreen mainScreen].scale;
    return floor(value * scale) / scale;
}
#pragma mark - MutableArray initMethod
- (NSMutableArray *)unionRects {
    if (!_unionRects) {
        _unionRects = [NSMutableArray array];
    }
    return _unionRects;
}
- (NSMutableArray *)allItemAttributes {
    if (!_allItemAttributes) {
        _allItemAttributes = [NSMutableArray array];
    }
    return _allItemAttributes;
}
- (NSMutableArray *)columnHeights {
    if (!_columnHeights) {
        _columnHeights = [NSMutableArray array];
    }
    return _columnHeights;
}

#pragma mark - init Method
- (void)initCommon{

    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
    self.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);

}
- (instancetype)init{
    if (self = [super init]) {
        
        [self initCommon];
    }
    return self;

}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self initCommon];
    }

    return  self;
}
- (id <CommentnViewDelegateWaterfallLayout> )delegate {
    
    return (id <CommentnViewDelegateWaterfallLayout> )self.collectionView.delegate;
}

#pragma mark - Override Method

- (void)prepareLayout{
    
    [super prepareLayout];
    [self.allItemAttributes removeAllObjects];
    [self.unionRects removeAllObjects];
    [self.columnHeights removeAllObjects];
    NSInteger numberOfSection = [self.collectionView numberOfSections];

    if (numberOfSection == 0) {
        return;
    }
        _totalNum = [self.collectionView numberOfItemsInSection:1];
    if (_totalNum == 0) {
        return;
    }
    
    NSInteger idx = 0;
    for (NSInteger i = 0; i < _totalNum; i++) {

        NSMutableArray *ColumnHeights = [NSMutableArray arrayWithCapacity:2];
        for (idx = 0; idx < 2; idx++) {
            [ColumnHeights addObject:@(0)];
        }
        [self.columnHeights addObject:ColumnHeights];
    }
    UICollectionViewLayoutAttributes *attributes;
    NSMutableArray *itemAttributes = [NSMutableArray arrayWithCapacity:_totalNum];
    
    for (NSInteger i = 0; i < _totalNum; i++) {
    

        CGFloat itemWidth = ([UIScreen mainScreen].bounds.size.width - 20) / 2;
        NSUInteger columnIndex = [self nextColumnIndexForItem:idx inSection:1];
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:idx inSection:1];
        CGFloat xOffset = self.sectionInset.left + itemWidth * columnIndex;
        CGFloat yOffset = [self.columnHeights[i][columnIndex] floatValue];
        CGSize itemSize = [self.delegate collectionView:self.collectionView layout:self sizeForItemAtIndexPath:indexPath];
        CGFloat itemHeight = 0;
        if (itemSize.height > 0 && itemSize.width > 0) {
            itemHeight = CGFloatScale(itemSize.height * itemWidth / itemSize.width);
        }
        
        attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        attributes.frame = CGRectMake(xOffset, yOffset, itemWidth, itemHeight);
        [itemAttributes addObject:attributes];
        [self.allItemAttributes addObject:attributes];
        self.columnHeights[i][columnIndex] = @(CGRectGetMaxY(attributes.frame));

    }
    
    
    idx = 0;
    NSInteger itemCounts = [self.allItemAttributes count];
    while (idx < itemCounts) {
        CGRect unionRect = ((UICollectionViewLayoutAttributes *)self.allItemAttributes[idx]).frame;
        NSInteger rectEndIndex = MIN( unionSize, itemCounts);
        
        for (NSInteger i = 1; i < rectEndIndex; i++) {
            unionRect = CGRectUnion(unionRect, ((UICollectionViewLayoutAttributes *)self.allItemAttributes[i]).frame);
       
        }
        
        idx = rectEndIndex;
        
        [self.unionRects addObject:[NSValue valueWithCGRect:unionRect]];
        
    }


}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{

    return (self.allItemAttributes)[indexPath.item];

}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    
        NSInteger i;
        NSInteger begin = 0, end = self.unionRects.count;
        NSMutableArray *attrs = [NSMutableArray array];
        
        for (i = 0; i < self.unionRects.count; i++) {
            if (CGRectIntersectsRect(rect, [self.unionRects[i] CGRectValue])) {
                begin = i * unionSize;
                break;
            }
        }
        for (i = self.unionRects.count - 1; i >= 0; i--) {
            if (CGRectIntersectsRect(rect, [self.unionRects[i] CGRectValue])) {
                end = MIN((i + 1) * unionSize, self.allItemAttributes.count);
                break;
            }
        }
        for (i = begin; i < end; i++) {
            UICollectionViewLayoutAttributes *attr = self.allItemAttributes[i];
            if (CGRectIntersectsRect(rect, attr.frame)) {
                [attrs addObject:attr];
            }
        }        
        return [NSArray arrayWithArray:attrs];
    
}


- (CGSize)collectionViewContentSize{

    NSInteger numberOfSections = [self.collectionView numberOfSections];
    if (numberOfSections == 0) {
        return CGSizeZero;
    }
    
    CGSize contentSize = self.collectionView.bounds.size;
    contentSize.height = [[[self.columnHeights lastObject] firstObject] floatValue];
    
    
    return contentSize;
    
}

- (NSUInteger)nextColumnIndexForItem:(NSInteger)item inSection:(NSInteger)section {
    
    NSUInteger index = 0;
    NSInteger columnCount = 2;
    index = (item % columnCount);
    return index;

}

@end
