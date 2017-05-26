//
//  UIScreen+Utility.m
//  ArchitectureProject
//
//  Created by chenao on 6/23/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "UIScreen+Utility.h"

@implementation UIScreen (Utility)

+ (CGSize)screenSize {
    return [UIScreen bounds].size;
}

+ (CGRect)bounds {
    return [[UIScreen mainScreen] bounds];
}

+ (CGFloat)screenWidth {
    return [UIScreen bounds].size.width;
}

+ (CGFloat)screenHeight {
    return [UIScreen bounds].size.height;
}

@end
