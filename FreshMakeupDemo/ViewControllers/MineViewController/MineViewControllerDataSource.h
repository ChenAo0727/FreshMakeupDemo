//
//  MineViewControllerDataSource.h
//  FreshMakeupDemo
//
//  Created by Mac on 15/8/20.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineViewControllerDataSource : NSObject<UITableViewDataSource>
@property (strong, nonatomic) NSMutableArray *mineLabelArray;

@end
