//
//  UIColor+Utility.h
//  ArchitectureProject
//
//  Created by chenao on 6/23/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Utility)

+ (instancetype)colorWithIntRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
+ (instancetype)colorWithIntRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha;

//custom color
+ (instancetype)drySkinLabelColor;
+ (instancetype)mixSkinLabelColor;
+ (instancetype)oilySkinLabelColor;
+ (instancetype)darkGreyLabelColor;
+ (UIColor *) colorFromHexCode:(NSString *)hexString;
+ (UIColor *)mainBlueColor;

@end
