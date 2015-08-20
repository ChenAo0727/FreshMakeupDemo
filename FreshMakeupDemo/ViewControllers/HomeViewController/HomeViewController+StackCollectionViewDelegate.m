//
//  HomeViewController+StackCollectionViewDelegate.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+StackCollectionViewDelegate.h"
#import "HomeViewController+Animation.h"

@implementation HomeViewController (StackCollectionViewDelegate)

- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didBeginSlideDownItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didBeginSlideUpItemAtIndexPath:(NSIndexPath *)indexPath {
    
}



- (void)stackCollectionViewDidEndSlideUp:(StackCollectionView *)stackCollectionView {
    [self recoverAllComponent];
}


- (void)stackCollectionViewDidEndSlideDown:(StackCollectionView *)stackCollectionView {
    [self recoverAllComponent];
}

- (void)stackCollectionView:(StackCollectionView *)stackCollectionView didSlideWithOffset:(CGFloat)offset {
    CGFloat absOffset = fabs(offset);
    [self.downGuideImageView stopAnimating];
    if (absOffset >= 100) {
        self.updateTimeLabel.alpha = 0;
        self.updateTimeImageView.alpha = 0;
        self.downGuideImageView.alpha = 0;
    } else {
        self.updateTimeLabel.alpha = 1 - absOffset / 100.0;
        self.updateTimeImageView.alpha = 1 - absOffset / 100.0;
        self.downGuideImageView.alpha = 1 - absOffset / 100.0;
    }
}

@end
