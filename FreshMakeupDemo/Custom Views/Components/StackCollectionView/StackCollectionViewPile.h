//
//  StackCollectionViewPile.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/18/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackCollectionViewCell.h"

@interface StackCollectionViewPile : NSObject

@property (strong, nonatomic) StackCollectionViewCell *previousCell;
@property (strong, nonatomic) StackCollectionViewCell *currentCell;
@property (strong, nonatomic) StackCollectionViewCell *nextCell;

@end
