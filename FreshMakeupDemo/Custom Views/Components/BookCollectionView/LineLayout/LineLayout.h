//
//  LineLayout.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/15/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LineLayout : UICollectionViewFlowLayout
//Default is YES
@property (nonatomic, assign) BOOL pageEnable;

@property (nonatomic, assign) CGFloat previousOffsetX;
@end
