//
//  BookCollectionView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/15/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BookCollectionView.h"
#import "RealBookView.h"
#import "LineLayout.h"

@implementation BookCollectionView

- (void)configureImages {
    self.images = [[NSMutableArray alloc] init];
    
    for (int i = 1; i<=12; i++) {
        [self.images addObject:@"home_book_image"];
    }
}

+ (instancetype)create {
    BookCollectionView *bookCollectionView = [[[NSBundle mainBundle] loadNibNamed:@"BookCollectionView" owner:nil options:nil] lastObject];
    bookCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
    return bookCollectionView;
}

- (void)updateWithCurrentIndex:(NSInteger)index {
    //NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:0];
}

- (void)awakeFromNib {
    [self configureImages];
    // 创建布局
    LineLayout *layout = [[LineLayout alloc] init];
    // 创建collectionView
    [self.lineCollectionView setCollectionViewLayout:layout];
    self.lineCollectionView.dataSource = self;
    self.lineCollectionView.delegate = self;
    [self.lineCollectionView registerNib:[UINib nibWithNibName:@"RealBookView" bundle:nil] forCellWithReuseIdentifier:BOOK_COLLECTIONVIEW_CELL];
}

#pragma mark - <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RealBookView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BOOK_COLLECTIONVIEW_CELL forIndexPath:indexPath];
    __weak typeof(self) weakself = self;
    cell.didSelectCellBllock = ^(UICollectionViewCell *cell) {
        if ([weakself.delegate respondsToSelector:@selector(BookCollectionView:didSelectItemAtIndex:)]) {
            [weakself.delegate BookCollectionView:self didSelectItemAtIndex:0];
        }
    };
    [cell layoutIfNeeded];
    return cell;
}

#pragma mark - <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    RealBookView *cell = (RealBookView *)[collectionView cellForItemAtIndexPath:indexPath];
}

@end
