//
//  FreshTryInformationTool.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/7.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FreshTryInformationTool : NSObject

@property (strong, nonatomic)UIImage *image;
@property (strong, nonatomic)NSString *title;
@property (strong, nonatomic)NSString *shortComment;

- (instancetype)initWithDanceLegend;
- (instancetype)initWithForBeloveOne;
- (instancetype)initWithMAYSU;
- (instancetype)initWithBOBBI;
- (instancetype)initWithJurlique;
- (instancetype)initWithLaduree;
@end

