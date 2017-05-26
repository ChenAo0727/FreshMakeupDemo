//
//  UIColor+Utility.m
//  ArchitectureProject
//
//  Created by chenao on 6/23/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "UIColor+Utility.h"

@implementation UIColor (Utility)


+ (instancetype)drySkinLabelColor {
    return [UIColor colorWithIntRed:103 green:212 blue:223];
}

+ (instancetype)mixSkinLabelColor {
    return [UIColor colorWithIntRed:220 green:109 blue:83];
}

+ (instancetype)oilySkinLabelColor {
    return [UIColor colorWithIntRed:229 green:193 blue:95];
}

//example
+ (instancetype)darkGreyLabelColor {
    return [UIColor colorWithIntRed:50 green:50 blue:50];
}

+ (instancetype)colorWithIntRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha {
    return [UIColor colorWithRed:(red / 255.0) green:(green / 255.0) blue:(blue / 255.0) alpha:(alpha / 255.0)];
}

+ (instancetype)colorWithIntRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue {
    return [UIColor colorWithIntRed:red green:green blue:blue alpha:255];
}

+ (UIColor *)mainBlueColor {
    return [UIColor colorWithIntRed:133 green:204 blue:201];
}

+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@", [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)], [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)], [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
