//
//  TagCollectionViewCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 9/2/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define TAG_COLLECTION_VIEW_CELL @"TagCollectionViewCell"

@interface TagCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *tagTextLabel;

- (CGSize)sizeOfCell;
- (void)updateWithTagText:(NSString *)text isTitle:(BOOL)isTitle;

@end
