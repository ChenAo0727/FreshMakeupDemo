//
//  Pool.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "Pool.h"

@interface PoolItem : NSObject

@property (nonatomic, strong) id object;
@property (nonatomic, strong) NSString *tag;

@end

@implementation PoolItem

+ (instancetype)itemOfObejct:(id)object {
    PoolItem *item = [PoolItem new];
    item.object = object;
    item.tag = [NSString stringWithFormat:@"r%lu", (long)arc4random_uniform(20)];
    return item;
}

+ (instancetype)itemOfObject:(id)object tag:(NSInteger)tag {
    PoolItem *item = [PoolItem new];
    item.object = object;
    item.tag = [NSString stringWithFormat:@"%lu", (long)tag];
    return item;
}

- (NSUInteger)hash {
    return [self.tag hash];
}

- (BOOL)isEqual:(id)object {
    if (![object isKindOfClass:[PoolItem class]]) {
        return NO;
    }
    if ([self.tag hasPrefix:@"r"]) {
        return NO;
    }
    PoolItem *other = (PoolItem *)object;
    return [other.tag isEqualToString:self.tag];
}

@end

@interface Pool ()

@property (nonatomic, assign) NSUInteger minSize;
@property (nonatomic, assign) NSUInteger maxSize;
@property (nonatomic, strong) NSMutableDictionary *pool;

@end

@implementation Pool

- (id)init {
    self = [super init];
    if (self) {
        _maxSize = 1;
        _maxSize = 10;
        _pool = [NSMutableDictionary dictionary];
    }
    return self;
}

+ (instancetype)pool {
    return [Pool new];
}

+ (instancetype)poolOfMinSize:(NSUInteger)minSize maxSize:(NSUInteger)maxSize {
    Pool *pool = [Pool new];
    pool.minSize = 0 == minSize ? 1 : minSize;
    pool.maxSize = maxSize > pool.minSize ? maxSize :pool.minSize;
    return pool;
}

- (BOOL)hasItemOfKey:(NSString *)key {
    NSMutableArray *items = [self.pool objectForKey:key];
    if (!items) {
        return NO;
    }
    return self.minSize <= [items count];
}

- (id)getItemOfKey:(NSString *)key {
    return [self getItemOfKey:key matchItem:nil];
}

- (id)getItemOfKey:(NSString *)key tag:(NSInteger)tag {
    return [self getItemOfKey:key matchItem:[PoolItem itemOfObject:@"o" tag:tag]];
}

- (void)putItem:(id)item key:(NSString *)key {
    [self putPoolItem:[PoolItem itemOfObejct:item] key:key];
}

- (void)putItem:(id)item key:(NSString *)key tag:(NSInteger)tag {
    [self putPoolItem:[PoolItem itemOfObject:item tag:tag] key:key];
}

#pragma mark - Private Methods

- (id)getItemOfKey:(NSString *)key matchItem:(PoolItem *)matchItem {
    if ([self hasItemOfKey:key]) {
        NSMutableArray *items = [self.pool objectForKey:key];
        NSUInteger index = 0;
        if (matchItem && [items containsObject:matchItem]) {
            index = [items indexOfObject:matchItem];
        }
        PoolItem *item = items[index];
        [items removeObjectAtIndex:index];
        return item.object;
    } else {
        return nil;
    }
}

- (void)putPoolItem:(PoolItem *)item key:(NSString *)key {
    NSMutableArray *items = [self.pool objectForKey:key];
    if (!items) {
        items = [NSMutableArray array];
        [self.pool setObject:items forKey:key];
    }
    if ([items containsObject:item]) {
        [items removeObject:item];
    }
    if (self.maxSize <= [items count]) {
        [self getItemOfKey:key];
    }
    [items addObject:item];
}

@end
