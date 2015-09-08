//
//  FeelIngViwControllerDataSource.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeelingInformationTool.h"
@interface FeelIngViwControllerDataSource : NSObject<UITableViewDataSource>
@property (strong, nonatomic)FeelingInformationTool *feelingInformationTool;
@end
