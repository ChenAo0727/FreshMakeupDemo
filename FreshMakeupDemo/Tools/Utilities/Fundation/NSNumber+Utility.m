//
//  NSNumber+Utility.m
//  Shai
//
//  Created by chenao on 6/30/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "NSNumber+Utility.h"

@implementation NSNumber (Utility)

- (NSString *)IntegerFommatToString {
    if (self.integerValue < 10) {
        return [NSString stringWithFormat:@"0%ld", self.integerValue];
    } else {
        return [NSString stringWithFormat:@"%ld", self.integerValue];
    }
}

@end
