//
//  FreashSaleViewControllerDataSource.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FreshSaleInfomationTool.h"
@interface FreashSaleViewControllerDataSource : NSObject<UITableViewDataSource>
@property (strong, nonatomic) FreshSaleInfomationTool *freshSaleInfomationTool;
@end
