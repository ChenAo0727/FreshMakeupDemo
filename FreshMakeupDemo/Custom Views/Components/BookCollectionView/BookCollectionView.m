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

+ (instancetype)create {
    BookCollectionView *bookCollectionView = [[[NSBundle mainBundle] loadNibNamed:@"BookCollectionView" owner:nil options:nil] lastObject];
    bookCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
    return bookCollectionView;
}

- (void)startSpriteAnimation {
    [self.downGuideImageView startAnimating];
}

- (void)stopSpriteAnimation {
    [self.downGuideImageView stopAnimating];
}

- (void)updateNextGroupTitle:(NSString *)text andDetailInfomationToolArray:(NSArray *)detailInfomationToolArray {
    self.nextStackTitleLabel.text = text;
    self.bottomViewContrainer.hidden = [text isEqualToString:@""];
    self.freshMakeupArray = detailInfomationToolArray;
    [self.lineCollectionView reloadData];
}

- (void)updateWithCurrentIndex:(NSInteger)index {
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:0];
}

- (void)awakeFromNib {
    // 创建布局
    LineLayout *layout = [[LineLayout alloc] init];
    // 创建collectionView
    [self.lineCollectionView setCollectionViewLayout:layout];
    self.lineCollectionView.dataSource = self;
    self.lineCollectionView.delegate = self;
    [self.lineCollectionView registerNib:[UINib nibWithNibName:@"RealBookView" bundle:nil] forCellWithReuseIdentifier:BOOK_COLLECTIONVIEW_CELL];
    [self configureGuiAnimation];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)dealloc {
    [self.downGuideImageView stopAnimating];
}

- (void)configureGuiAnimation {
    [self.downGuideImageView setAnimationImages:@[[UIImage imageNamed:@"home_down_guide1"], [UIImage imageNamed:@"home_down_guide2"], [UIImage imageNamed:@"home_down_guide3"]]];
    [self.downGuideImageView setAnimationDuration:1];
}

#pragma mark - <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (self.freshMakeupArray && self.freshMakeupArray.count > 0) {
        return self.freshMakeupArray.count;
    }
    return 7;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RealBookView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BOOK_COLLECTIONVIEW_CELL forIndexPath:indexPath];
    cell.indexPath = [NSIndexPath indexPathForRow:indexPath.row inSection:self.tag];
    __weak typeof(self) weakself = self;
    cell.didSelectCellBllock = ^(UICollectionViewCell *cell) {
        if ([weakself.delegate respondsToSelector:@selector(BookCollectionView:didSelectItemAtIndex:cell:)]) {
            [weakself.delegate BookCollectionView:self didSelectItemAtIndex:0 cell:cell];
        }
    };
    if (self.freshMakeupArray && self.freshMakeupArray.count > 0) {
        [cell updateWithDetailInfomationTool:[self.freshMakeupArray objectAtIndex:indexPath.row]];
    } else {
        [cell updateWithCoverImage:[UIImage imageNamed:@"detail_cover_image"] title:@"DIOR新款口红" shortComment:@"这里是一段介绍哦，啦啦啦啦啦啦啦啦， 这里是一段介绍哦， 介绍本款新鲜美妆的信息"];
    }
    [cell layoutIfNeeded];
    return cell;
}

@end
