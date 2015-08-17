//
//  BookCollectionViewCell.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "BookCollectionViewCell.h"

@implementation BookCollectionViewCell {
    CATransform3D originTransform;
}

- (void)awakeFromNib {
    self.imageView.layer.borderWidth = 5;
    self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imageView.layer.cornerRadius = 5;
    self.imageView.clipsToBounds = YES;
    self.coverImageView.layer.borderWidth = 5;
    self.coverImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.coverImageView.layer.cornerRadius = 5;
    self.coverImageView.clipsToBounds = YES;
    self.coverImageViewLeftContraint.constant = - self.frame.size.width / 2;
    self.coverImageViewRightContraint.constant = self.frame.size.width / 2;
    self.coverImageView.layer.anchorPoint = CGPointMake(0.0, 0.5);
    originTransform = self.coverImageView.layer.transform;
    ////    self.imageView.layer.masksToBounds = YES;
}

- (void)setImage:(NSString *)image {
    _image = [image copy];
    
    self.imageView.image = [UIImage imageNamed:image];
    self.coverImageView.image = [UIImage imageNamed:image];
}

- (void)animationOpenBook {
    CATransform3D transfrom = originTransform;
    transfrom.m34 = 1.0 / 1000;
    transfrom = CATransform3DRotate(transfrom, M_PI / 2, 0 , 1, 0);
    [UIView animateWithDuration:1 animations:^{
        self.coverImageView.layer.transform = transfrom;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)animationCloseBook {
    [UIView animateWithDuration:1 animations:^{
        self.coverImageView.layer.transform = originTransform;
    } completion:^(BOOL finished) {
        
    }];
}

@end
