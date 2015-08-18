//
//  Pool.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pool : NSObject

+ (instancetype)pool;
+ (instancetype)poolOfMinSize:(NSUInteger)minSize maxSize:(NSUInteger)maxSize;

- (BOOL)hasItemOfKey:(NSString *)key;

- (id)getItemOfKey:(NSString *)key;
- (id)getItemOfKey:(NSString *)key tag:(NSInteger)tag;

- (void)putItem:(id)item key:(NSString *)key;
- (void)putItem:(id)item key:(NSString *)key tag:(NSInteger)tag;

@end
