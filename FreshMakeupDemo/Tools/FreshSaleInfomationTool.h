//
//  FreshSaleInfomationTool.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/7.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FreshSaleInfomationTool : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *price;
@property (strong, nonatomic) NSArray *labelArray;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *commentary;
@property (strong, nonatomic) UIImage *priceImage;
@property (strong, nonatomic) NSArray *comments;

- (instancetype)initWithMISSHA;
- (instancetype)initWithBIODERMA;
- (instancetype)initWithPanasonic;



- (instancetype)initWithDALGCRInfomation;//自然魅惑润唇膏
- (instancetype)initWithClarisonicInfomation;//科莱丽 声波洁面仪
- (instancetype)initWithLilyBellInfomation;//丽丽贝尔 化妆棉 222片 *5包装

@end
