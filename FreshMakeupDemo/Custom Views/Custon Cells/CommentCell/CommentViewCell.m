//
//  CommentViewCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "UITableView+FDTemplateLayoutCell.h"
#import "UIScreen+Utility.h"
#import "CommentViewCell.h"
#import "UIColor+Utility.h"
#import "ChatCell.h"

static NSString *CHATCELL = @"ChatCell";

@implementation CommentViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2;
    self.userImage.layer.borderColor = [UIColor greenColor].CGColor;
    self.userImage.layer.borderWidth = 0.4;
    self.userImage.layer.masksToBounds = YES;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.commentTableView.delegate = self;
    self.commentTableView.dataSource = self;
    [self.commentTableView registerNib:[UINib nibWithNibName:CHATCELL bundle:nil] forCellReuseIdentifier:CHATCELL];
    self.isHide = YES;
}

- (IBAction)addApprove:(id)sender {
    CGAffineTransform transform = self.userImage.transform;
    transform = CGAffineTransformScale(transform, 1.2, 1.2);
    [UIView animateWithDuration:0.1 animations:^{
        self.approveImage.transform = transform;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.approveImage.transform = self.userImage.transform;
        } completion:^(BOOL finished) {
            NSInteger praiseCountLeft = [self.approveCount.text integerValue];
            if (praiseCountLeft == 200) {
                self.approveCount.text = @"201";
                self.approveImage.image = [UIImage imageNamed:@"detail_approve_clicked_icon.png"];
                self.approveCount.textColor = [UIColor colorFromHexCode:@"#EA5E42"];
            } else {
                self.approveCount.text = @"200";
                self.approveImage.image = [UIImage imageNamed:@"detail_approve_icon.png"];
                self.approveCount.textColor = [UIColor grayColor];
            }
        }];
    }];
}
- (void)updateWithUserImage:(UIImage *)image userName:(NSString *)name curentFloor:(NSInteger)floor commitTime:(NSString *)time approveCount:(NSInteger)approveCount commentCount:(NSInteger)commentCount commentLabel:(NSString *)comment{
    self.userImage.image = image;
    self.userName.text = name;
    if (floor == 1) {
        self.curentFloor.text = @"沙发";
    }else{
        self.curentFloor.text = [NSString stringWithFormat:@"%ld楼",floor];
    }
    self.commitTime.text = time;
    self.approveCount.text = [NSString stringWithFormat:@"%ld",approveCount];
    self.commentCount.text = [NSString stringWithFormat:@"%ld",commentCount];
    self.commentLabel.text = comment;
}

- (IBAction)commentButtonClick:(id)sender {
   
}

- (void)updateHeightConstraint {
    if (self.isHide) {
        self.heightConstraint.constant = 0;
        self.commentHeight.constant = self.commentLabel.frame.size.height;
        [self layoutIfNeeded];
        [self setNeedsLayout];

    }else{
        self.heightConstraint.constant = self.commentTableView.contentSize.height ;
        [self layoutIfNeeded];
        [self setNeedsLayout];
    }
}

- (CGFloat)getCommentHeight {
    return [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:CHATCELL forIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:CHATCELL];
    CGFloat height = [cell cellHeight];
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    return height;
}

@end
