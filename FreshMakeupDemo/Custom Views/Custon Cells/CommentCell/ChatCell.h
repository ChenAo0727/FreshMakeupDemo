//
//  ChatCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/4.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *answerContent;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConstrain;

- (CGFloat)cellHeight;
+ (instancetype)create;

@end
