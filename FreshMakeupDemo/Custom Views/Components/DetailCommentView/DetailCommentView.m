//
//  DetailCommentView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailCommentView.h"
#import "DetailCommentCell.h"

@implementation DetailCommentView

+ (instancetype)create {
    DetailCommentView *detailCommentView = [[[NSBundle mainBundle] loadNibNamed:@"DetailCommentView" owner:nil options:nil] lastObject];
    detailCommentView.translatesAutoresizingMaskIntoConstraints = NO;
    return detailCommentView;
}

- (void)awakeFromNib {
    [self.detailCommentTableView registerNib:[UINib nibWithNibName:@"DetailCommentCell" bundle:nil] forCellReuseIdentifier:DETAIL_COMMENT_CELL];
    self.detailCommentTableView.delegate = self;
    self.detailCommentTableView.dataSource = self;
}

- (IBAction)didClickCloseButton:(id)sender {
    self.hidden = YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailCommentCell *cell = [self.detailCommentTableView dequeueReusableCellWithIdentifier:DETAIL_COMMENT_CELL];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailCommentCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"DetailCommentCell" owner:nil options:nil] lastObject];
    return [cell heightOfCell];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

@end
