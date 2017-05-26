//
//  RollCollectionViewDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "RollCollectionViewDataSource.h"
#import "RollCollectionViewCell.h"
@implementation RollCollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    [self rollInitializationDate];
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [self rollCollectionView:collectionView indexPath:indexPath];
}
//数组 初始化
- (void)rollInitializationDate {
    self.rollImageArray = [NSMutableArray arrayWithObjects:@"findhottopic1.jpg",@"findhottopic2.jpg",@"findhottopic3.jpg",@"findhottopic4.jpg",@"findhottopic5.jpg",@"findhottopic6.jpg",@"findhottopic7.jpg",@"findhottopic8.png",@"findhottopic9.jpg",@"findhottopic10.jpg", nil];
    self.rollLabelArray = [NSMutableArray arrayWithObjects:@"#美体健身",@"#美丽天使",@"#美妆探讨",@"#闺蜜交流",@"#瑜伽",@"#美甲知识",@"#健美操",@"#彩妆问答",@"#美颜小知识",@"#美肤小问答", nil];
    self.rollDiscussionLabelArray = [NSMutableArray arrayWithObjects:@"76人在讨论",@"110人在讨论",@"60人在讨论",@"30人在讨论",@"456人在讨论",@"56人在讨论",@"136人在讨论",@"567人在讨论",@"259人在讨论",@"1564人在讨论", nil];
}
#pragma mark 自定义cell
- (UICollectionViewCell *)rollCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath {
    RollCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ROLL_COLLECTIONVIEW_CELL forIndexPath:indexPath];
    cell.rollImageView.image = [UIImage imageNamed:[self.rollImageArray objectAtIndex:indexPath.item]];
    cell.rollLabel.text = [self.rollLabelArray objectAtIndex:indexPath.item];
    cell.rollDiscussionLabel.text = [self.rollDiscussionLabelArray objectAtIndex:indexPath.row];
    return cell;
}
@end
