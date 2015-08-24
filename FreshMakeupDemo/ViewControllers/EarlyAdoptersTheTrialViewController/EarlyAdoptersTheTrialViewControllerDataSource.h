//
//  EarlyAdoptersTheTrialViewControllerDataSource.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/8/17.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol EarlyAdoptersTheTrialViewControllerDataSourceDelegate <NSObject>
- (void)EarlyAdoptersTheTrialViewControllerShakeAshake;
@end
@interface EarlyAdoptersTheTrialViewControllerDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, weak) id<EarlyAdoptersTheTrialViewControllerDataSourceDelegate>delegate;
@end
