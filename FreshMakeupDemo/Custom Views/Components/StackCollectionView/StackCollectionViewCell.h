//
//  StackCollectionViewCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/18/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "AutoLayoutView.h"

@interface StackCollectionViewCell : AutoLayoutView

@property (nonatomic, strong) NSString *reuseId;

- (void)cellDidMoveToReusePool;

@end
