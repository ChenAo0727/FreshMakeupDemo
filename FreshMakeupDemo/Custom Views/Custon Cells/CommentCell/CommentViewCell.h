//
//  CommentViewCell.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define COMMENT_VIEW_CELL @"CommentViewCell"
@interface CommentViewCell : UITableViewCell<UITableViewDelegate,UITableViewDataSource>
typedef void(^updateFrameBlock)(CommentViewCell *);
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *curentFloor;
@property (weak, nonatomic) IBOutlet UILabel *commitTime;
@property (weak, nonatomic) IBOutlet UILabel *approveCount;
@property (weak, nonatomic) IBOutlet UILabel *commentCount;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UIView *bottomLine;
@property (weak, nonatomic) IBOutlet UIImageView *approveImage;
@property (weak, nonatomic) IBOutlet UIImageView *commentImage;
@property (weak, nonatomic) IBOutlet UIView *bootomView;
@property (weak, nonatomic) IBOutlet UITableView *commentTableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *commentHeight;
@property (assign, nonatomic)BOOL isHide;
@property (copy, nonatomic)updateFrameBlock block;

- (void)updateWithUserImage:(UIImage *)image userName:(NSString *)name curentFloor:(NSInteger)floor commitTime:(NSString *)time approveCount:(NSInteger)approveCount commentCount:(NSInteger)commentCount commentLabel:(NSString *)comment;
- (CGFloat)getCommentHeight;
- (void)updateHeightConstraint;
@end
