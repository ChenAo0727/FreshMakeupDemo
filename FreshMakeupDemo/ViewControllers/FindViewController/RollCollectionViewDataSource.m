//
//  RollCollectionViewDataSource.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "RollCollectionViewDataSource.h"
#import "RollCollectionViewCell.h"
@implementation RollCollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    self.rollImageArray = [NSMutableArray arrayWithObjects:@"findhottopic1.png",@"findhottopic2.png",@"findhottopic3.jpg",@"findhottopic4.jpg",@"findhottopic5.jpg", nil];
    self.rollLabelArray = [NSMutableArray arrayWithObjects:@"#DIOP的秘密",@"#香水传奇",@"#七月彩妆",@"#专业彩妆",@"#天然粉底", nil];
    self.rollDiscussionLabelArray = [NSMutableArray arrayWithObjects:@"3477人在讨论",@"647人在讨论",@"535人在讨论",@"235人在讨论",@"3456人在讨论", nil];
    return 5;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RollCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ROLL_COLLECTIONVIEW_CELL forIndexPath:indexPath];
    cell.rollImageView.image = [UIImage imageNamed:[self.rollImageArray objectAtIndex:indexPath.item]];
    cell.rollLabel.text = [self.rollLabelArray objectAtIndex:indexPath.item];
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.rollDiscussionLabel.text = [self.rollDiscussionLabelArray objectAtIndex:indexPath.row];
    return cell;
    
}
@end
