//
//  EvaluationCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/5.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MySegmentControl.h"
#define EVALUATION_CELL @"EvaluationCell"
@interface EvaluationCell : UICollectionViewCell
@property (strong, nonatomic) MySegmentControl *mySegmentControl;
@end
