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
    self.staggeredFlowLayout.sectionInset = UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 0.0f);
    [self.tagCollectionView registerNib:[UINib nibWithNibName:@"TagCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:TAG_COLLECTION_VIEW_CELL];
    [self.tagCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"DEFAULT_CELL"];
    self.tagCollectionView.collectionViewLayout = self.staggeredFlowLayout;
    self.tagCollectionView.dataSource = self;
    self.tagCollectionView.delegate = self;
}

- (CGFloat)heightOfCell {
    return self.tagCollectionView.contentSize.height + 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.row) {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"DEFAULT_CELL" forIndexPath:indexPath];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, cell.frame.size.height)];
        label.text = @"订阅标签";
        [cell addSubview:label];
        return cell;
    }
    TagCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:TAG_COLLECTION_VIEW_CELL forIndexPath:indexPath];
    [cell updateWithTagText:[tags objectAtIndex:indexPath.row - 1]];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return tags.count + 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.row) {
        return CGSizeMake(55, 27);
    }
    TagCollectionViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"TagCollectionViewCell" owner:nil options:nil] lastObject];
    [cell updateWithTagText:[tags objectAtIndex:indexPath.row - 1]];
    return [cell sizeOfCell];
}

@end
