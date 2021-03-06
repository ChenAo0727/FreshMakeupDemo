//
//  UIImage+Utility.h
//  ArchitectureProject
//
//  Created by chenao on 6/23/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Utility)

+ (UIImage *)imageWithView:(UIView *)view;
+ (UIImage *)imageWithView:(UIView *)view size:(CGSize)size;
- (UIImage *)rotateAndScaleWithRatio:(CGFloat)ratio;
- (NSString *)saveWithName:(NSString *)imageName;
+ (UIImage *)fixOrientation:(UIImage *)aImage;
- (UIColor *)mostColor;

@end
