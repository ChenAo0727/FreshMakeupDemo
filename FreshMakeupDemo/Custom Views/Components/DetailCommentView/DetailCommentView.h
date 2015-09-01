//
//  DetailCommentView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"

@interface DetailCommentView : AutoLayoutView <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *detailCommentTableView;
@property (weak, nonatomic) IBOutlet UIImageView *closeImageView;

@end
