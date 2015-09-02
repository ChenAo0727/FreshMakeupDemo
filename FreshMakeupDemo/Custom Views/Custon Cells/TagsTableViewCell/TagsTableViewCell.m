//
//  TagsTableViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TagsTableViewCell.h"
#import "TagCollectionViewCell.h"

@implementation TagsTableViewCell {
    NSArray *tags;
}

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    tags = @[@"#贝玲妃", @"#彩妆", @"#腮红", @"#贝玲妃蒲公英蜜粉", @"#呵呵呵呵"];
    self.staggeredFlowLayout = [[SGSStaggeredFlowLayout alloc] init];
    self.staggeredFlowLayout.layoutMode = SGSStaggeredFlowLayoutMode_Even;
    self.staggeredFlowLayout.minimumLineSpacing = 2.0f;
    self.staggeredFlowLayout.minimumInteritemSpacing = 2.0f;
    self.staggeredFlowLayout.sectionInset = UIEdgeInsetsMake(0.0f, 10.0f, 0.0f, 10.0f);
    [self.tagCollectionView registerNib:[UINib nibWithNibName:@"TagCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:TAG_COLLECTION_VIEW_CELL];
    self.tagCollectionView.collectionViewLayout = self.staggeredFlowLayout;
    self.tagCollectionView.dataSource = self;
    self.tagCollectionView.delegate = self;
}

- (CGFloat)heightOfCell {
    return self.tagCollectionView.contentSize.height;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TagCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:TAG_COLLECTION_VIEW_CELL forIndexPath:indexPath];
    [cell updateWithTagText:[tags objectAtIndex:indexPath.row]];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    TagCollectionViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"TagCollectionViewCell" owner:nil options:nil] lastObject];
    [cell updateWithTagText:[tags objectAtIndex:indexPath.row]];
    return [cell sizeOfCell];
}

@end
