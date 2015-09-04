//
//  DetailInfomationTool.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DetailInfomationTool : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) UIImage *coverImage;
@property (strong, nonatomic) NSString *shortComment;
@property (strong, nonatomic) NSArray *productionDescription;
@property (strong, nonatomic) NSArray *feeling;

- (instancetype)initWithYaDunInfomation;
@end
