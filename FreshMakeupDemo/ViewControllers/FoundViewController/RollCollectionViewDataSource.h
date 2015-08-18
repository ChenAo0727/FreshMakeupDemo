//
//  RollCollectionViewDataSource.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/18.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RollCollectionViewDataSource : NSObject<UICollectionViewDataSource>
@property (strong, nonatomic) NSMutableArray *rollImageArray;
@property (strong, nonatomic) NSMutableArray *rollLabelArray;
@property (strong, nonatomic) NSMutableArray *rollDiscussionLabelArray;
@end
