//
//  OwnerSayCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/21/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

#define OWNER_SAY_CELL @"OwnerSayCell"

@interface OwnerSayCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *discriptionLabel;
- (void)updateWithLabel:(NSString *)label;
- (CGFloat)heightOfCell;

@end
