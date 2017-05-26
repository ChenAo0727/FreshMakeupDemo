//
//  MineViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/21.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "BaseViewController.h"
#import "MineViewControllerDataSource.h"
#import "MineViewController+Configuratin.h"
#import "ZoomFadeTransition.h"
#import "XHDrawerController.h"

@interface MineViewController : BaseViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mineTableView;
@property (strong, nonatomic) IBOutlet UIView *mineEndView;
@property (weak, nonatomic) IBOutlet UILabel *mineEndLabel;
@property (strong, nonatomic) IBOutlet UIView *mineView;
@property (strong, nonatomic) IBOutlet UIView *mineGuideView;
@property (strong, nonatomic) MineViewControllerDataSource * mineViewControllerDataSource;
@property (strong, nonatomic) UIImageView *mineGuideimageView;

@property (strong, nonatomic) ZoomFadeTransition *zoomFadeTransition;
- (void)updateAllCellsToRight;
@end
