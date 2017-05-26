//
//  FreashSaleViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "BaseViewController.h"
#import "FreashSaleViewControllerDataSource.h"
#import "FreshSaleInfomationTool.h"
@interface FreashSaleViewController : BaseViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *freashSaleTableView;
@property (strong, nonatomic) FreashSaleViewControllerDataSource *freashSaleViewControllerDataSource;
- (void)updateDatasourceWithFreshSaleTool:(FreshSaleInfomationTool *)freshSaleInfomationTool;

@end
