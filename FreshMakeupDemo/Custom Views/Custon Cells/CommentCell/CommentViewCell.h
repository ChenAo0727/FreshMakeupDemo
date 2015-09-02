//
//  CommentViewCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define COMMENT_VIEW_CELL @"CommentViewCell"
@interface CommentViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *curentFloor;
@property (weak, nonatomic) IBOutlet UILabel *commitTime;
@property (weak, nonatomic) IBOutlet UILabel *approveCount;
@property (weak, nonatomic) IBOutlet UILabel *commentCount;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

- (CGFloat)getCommentHeight:(NSString *)commentString;
@end
