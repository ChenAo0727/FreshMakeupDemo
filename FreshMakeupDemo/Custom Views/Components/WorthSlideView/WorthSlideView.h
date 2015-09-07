//
//  WorthSlideView.h
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "SlideMotion.h"

@interface WorthSlideView : AutoLayoutView<SlideMotionDataSource, SlideMotionDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *worthImageView;
@property (weak, nonatomic) IBOutlet UILabel *worthCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *notWorthImageView;
@property (weak, nonatomic) IBOutlet UILabel *notWorthCountLabel;
@property (weak, nonatomic) IBOutlet UIView *processView;
@property (weak, nonatomic) IBOutlet UIView *leftProcessView;
@property (weak, nonatomic) IBOutlet UIView *carView;
@property (weak, nonatomic) IBOutlet UIImageView *carImageView;
@property (weak, nonatomic) IBOutlet UILabel *clickToBuyLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *carViewRightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftProcessViewWithConstraint;
@property (strong, nonatomic) SlideMotion *slideMotion;
- (void)updateWithPrice:(CGFloat)price worthCount:(NSInteger)worthCount NotWorthCount:(NSInteger)NotWorthCount;

@end
