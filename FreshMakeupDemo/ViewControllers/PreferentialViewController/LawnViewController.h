//
//  LawnViewController.h
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/9.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "BaseViewController.h"
#import "LawnViewControllerDataSource.h"
@interface LawnViewController : BaseViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *LawnTabelView;
@property (strong, nonatomic)LawnViewControllerDataSource *lawnDataSource;
@end
