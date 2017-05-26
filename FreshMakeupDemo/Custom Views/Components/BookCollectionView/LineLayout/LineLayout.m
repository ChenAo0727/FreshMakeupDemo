//
//  LineLayout.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/15/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "LineLayout.h"

@interface LineLayout ()
@property (nonatomic, assign) CGFloat oneDelta;

@end


@implementation LineLayout

- (instancetype)init {
    if (self = [super init]) {
        self.pageEnable = YES;
        self.oneDelta = 0;
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    return self;
}

/**
 * 准备操作：一般在这里设置一些初始化参数
 */
- (void)prepareLayout {
    // 必须要调用父类(父类也有一些准备操作)
    [super prepareLayout];
    
    // 设置cell的大小
    CGFloat itemWith = self.collectionView.frame.size.height * 0.6;
    CGFloat itemHeight = self.collectionView.frame.size.height;
    self.itemSize = CGSizeMake(itemWith, itemHeight);
    
    // 设置内边距
    CGFloat insert = (self.collectionView.frame.size.width - itemWith) * 0.5;
    self.minimumLineSpacing = -10;
    self.sectionInset = UIEdgeInsetsMake(0, insert, 0, insert);
}

/**
 * 决定了cell怎么排布
 */
- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    // 调用父类方法拿到默认的布局属性
   NSArray *array =  [[NSArray alloc]initWithArray:[super layoutAttributesForElementsInRect:rect] copyItems:YES];
    
    // 获得collectionView最中间的x值
    CGFloat centerX = self.collectionView.contentOffset.x + self.collectionView.frame.size.width * 0.5;
    // 在默认布局属性基础上进行微调
    
    CGFloat oneDelta = CGFLOAT_MAX;

    for (UICollectionViewLayoutAttributes *attrs in array) {
        // 计算cell中点x 和 collectionView最中间x值  的差距
        CGFloat delta = ABS(centerX - attrs.center.x);
        if (delta > 10) {
            oneDelta = MIN(delta, oneDelta);
        }

        // 利用差距计算出缩放比例（成反比）
        CGFloat scale = 1 - 0.5 * delta / (self.collectionView.frame.size.width + self.itemSize.width);
        attrs.transform = CGAffineTransformMakeScale(scale, scale);
        //        attrs.transform3D = CATransform3DMakeRotation(scale * M_PI_4, 0, 1, 1);
    }
    
    if (self.oneDelta == 0) {
        self.oneDelta = oneDelta;
    }
    
    return array;
}

/**
 * 当uicollectionView的bounds发生改变时，是否要刷新布局
 */
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}

/**
 * targetContentOffset ：通过修改后，collectionView最终的contentOffset(取决定情况)
 * proposedContentOffset ：默认情况下，collectionView最终的contentOffset
 */
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity {
    

    
    if (self.pageEnable) {
        
        if (proposedContentOffset.x > self.previousOffsetX + self.itemSize.width / 3.0) {
            self.previousOffsetX += self.oneDelta;
        } else if (proposedContentOffset.x < self.previousOffsetX  - self.itemSize.width / 3.0) {
            self.previousOffsetX -= self.oneDelta;
        }
        proposedContentOffset.x = self.previousOffsetX;
        
        return proposedContentOffset;
        
    }

    
    // 计算最终的可见范围
    CGRect rect;
    rect.origin = proposedContentOffset;
    rect.size = self.collectionView.frame.size;
    
    // 取得cell的布局属性
    NSArray *array = [super layoutAttributesForElementsInRect:rect];
    
    // 计算collectionView最终中间的x
    CGFloat centerX = proposedContentOffset.x + self.collectionView.frame.size.width * 0.5;
    
    // 计算最小的间距值
    CGFloat minDetal = MAXFLOAT;
    for (UICollectionViewLayoutAttributes *attrs in array) {
        if (fabs(minDetal) > fabs(attrs.center.x - centerX)) {
            minDetal = attrs.center.x - centerX;
        }
    }
    // 在原有offset的基础上进行微调
    if (minDetal + proposedContentOffset.x < 0) {
        return CGPointMake(0, proposedContentOffset.y);
    }
    return CGPointMake(proposedContentOffset.x + minDetal, proposedContentOffset.y);
}

@end
