//
//  ArgumentCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/21/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define IMAGE_CELL @"ImageCell"

@interface ImageCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (void)updateWithImage:(UIImage *)image;
- (CGFloat)heightOfCell;

@end
