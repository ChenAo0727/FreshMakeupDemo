//
//  FreashSaleViewController.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "BaseViewController.h"
#import "FreashSaleViewControllerDataSource.h"
@interface FreashSaleViewController : BaseViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *freashSaleTableView;
@property (strong, nonatomic) FreashSaleViewControllerDataSource *freashSaleViewControllerDataSource;
@end
