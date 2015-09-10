//
//  TagsTableViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TagsTableViewCell.h"
#import "TagCollectionViewCell.h"
#import "UIColor+Utility.h"

@implementation TagsTableViewCell {
    NSArray *tags;
}

- (void)awakeFromNib {
    tags = @[@"#贝玲妃", @"#彩妆", @"#腮红", @"#贝玲妃蒲公英蜜粉", @"#呵呵呵呵", @"#贝玲妃", @"#彩妆", @"#腮红", @"#贝玲妃蒲公英蜜粉", @"#呵呵呵呵"];
    self.equalSpaceFlowLayout = [[EqualSpaceFlowLayout alloc] init];
    [self.tagCollectionView registerNib:[UINib nibWithNibName:@"TagCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:TAG_COLLECTION_VIEW_CELL];
    [self.tagCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"DEFAULT_CELL"];
    self.tagCollectionView.collectionViewLayout = self.equalSpaceFlowLayout;
    self.tagCollectionView.dataSource = self;
    self.tagCollectionView.delegate = self;
}
- (void)updateWithTage:(NSArray *)tagsArr {
    tags = tagsArr;
    [self.tagCollectionView reloadData];
}
- (CGFloat)heightOfCell {
    return self.tagCollectionView.contentSize.height + 50;
}

- (void)updateHeightConstraint {
    self.collectionViewHeightConstraint.constant = self.tagCollectionView.contentSize.height;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TagCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:TAG_COLLECTION_VIEW_CELL forIndexPath:indexPath];
    [cell updateWithTagText:[tags objectAtIndex:indexPath.row] isTitle:NO];
//    if (0 == indexPath.row) {
//        [cell updateWithTagText:@"订阅标签" isTitle:YES];
//        
//    } else {
//        [cell updateWithTagText:[tags objectAtIndex:indexPath.row - 1] isTitle:NO];
//    }
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return tags.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    TagCollectionViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"TagCollectionViewCell" owner:nil options:nil] lastObject];
//    if (0 == indexPath.row) {
//        [cell updateWithTagText:@"订阅标签" isTitle:YES];
//    } else {
//        [cell updateWithTagText:[tags objectAtIndex:indexPath.row - 1] isTitle:NO];
//    }
    [cell updateWithTagText:[tags objectAtIndex:indexPath.row] isTitle:NO];
    CGSize cellSize = [cell sizeOfCell];
    return cellSize;
}

@end
