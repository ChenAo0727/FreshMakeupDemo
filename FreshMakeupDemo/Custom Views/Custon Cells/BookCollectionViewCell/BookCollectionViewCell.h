//
//  BookCollectionViewCell.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BOOK_COLLECTIONVIEW_CELL @"BookCollectionViewCell"

typedef void (^DidSelectCellBllock) (UICollectionViewCell * cell);

@interface BookCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverImageViewLeftContraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverImageViewRightContraint;
@property (nonatomic, copy) NSString *image;
@property (strong, nonatomic) DidSelectCellBllock didSelectCellBllock;

- (void)animationOpenBook;
- (void)animationCloseBook;

@end
