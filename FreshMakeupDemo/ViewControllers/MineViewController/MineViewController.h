//
//  MineViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/21.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "BaseViewController.h"
#import "MineViewControllerDataSource.h"
#import "MineViewController+Configuratin.h"
#import "ZoomFadeTransition.h"
@protocol MineViewControllerDelegate <NSObject>
- (void)mineReturnViewControllerAction;
@end
@interface MineViewController : BaseViewController<UITableViewDelegate,UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mineTableView;
@property (strong, nonatomic) IBOutlet UIView *mineEndView;
@property (weak, nonatomic) IBOutlet UILabel *mineEndLabel;
@property (strong, nonatomic) IBOutlet UIView *mineView;
@property (strong, nonatomic) IBOutlet UIView *mineGuideView;
@property (strong, nonatomic) MineViewControllerDataSource * mineViewControllerDataSource;
@property (strong, nonatomic) UIImageView *mineGuideimageView;

@property (strong, nonatomic) ZoomFadeTransition *zoomFadeTransition;


@property (nonatomic, weak) id<MineViewControllerDelegate> delegate;//协议值定义delegate
@end
