//
//  FeelIngViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "BaseViewController.h"
#import "FeelIngViwControllerDataSource.h"
#import "FeelingInformationTool.h"
@interface FeelIngViewController : BaseViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *feelingTableView;
@property (weak, nonatomic) IBOutlet UIButton *returnButton;

@property (strong, nonatomic)FeelingInformationTool *feelingInformationTool;
@property (strong, nonatomic)FeelIngViwControllerDataSource *feelIngViwControllerDataSource;
@end
