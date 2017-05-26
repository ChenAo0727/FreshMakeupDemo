//
//  PreferentialViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "BaseViewController.h"
#import "PreferentialViewControllerDataSource.h"
@interface PreferentialViewController : BaseViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *preferentialTableView;

@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (assign, nonatomic)NSInteger index;
@property (strong, nonatomic)PreferentialViewControllerDataSource *preferentialViewControllerDataSource;
+ (instancetype)create;
@end
