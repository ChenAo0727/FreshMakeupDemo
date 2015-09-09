//
//  CommentInfomationTool.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommentInfomationTool : NSObject

@property (strong, nonatomic) NSString *nickName;
@property (strong, nonatomic) UIImage *avatar;
@property (assign, nonatomic) NSInteger skinProperty;
@property (assign, nonatomic) BOOL isMale;
@property (strong, nonatomic) NSString *age;
@property (strong, nonatomic) NSString *identity;
@property (strong, nonatomic) NSString *commentText;

+ (NSArray *)ladureeCommentArray;
+ (NSArray *)helpClearMilkArray;

@end
