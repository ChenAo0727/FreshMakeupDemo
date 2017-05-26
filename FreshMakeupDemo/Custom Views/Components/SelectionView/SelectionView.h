//
//  SelectionView.h
//  FreshMakeupDemo
//
//  Created by chenao on 8/24/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "AutoLayoutView.h"

@interface SelectionView : AutoLayoutView

@property (weak, nonatomic) IBOutlet UIImageView *selectionLikeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *selectionUnlikeImageView;
@property (weak, nonatomic) IBOutlet UIView *processView;
@property (weak, nonatomic) IBOutlet UIView *processLeftView;
@property (weak, nonatomic) IBOutlet UILabel *sumUserCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *approveCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *disapproveCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *approveLabel;
@property (weak, nonatomic) IBOutlet UILabel *disapproveLabel;
@property (weak, nonatomic) IBOutlet UIImageView *unlikeLineImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *unLikeLineImageViewTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *processLeftViewWithConstraint;

@end
