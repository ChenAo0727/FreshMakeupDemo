//
//  HomeViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by chenao on 8/20/15.
//  Copyright (c) 2015 chenao. All rights reserved.
//

#import "HomeViewController+Configuration.h"
#import "DetailInfomationTool.h"
#import "FreshSaleInfomationTool.h"
#import "FreshTryInformationTool.h"
#import "UIScreen+Utility.h"

@implementation HomeViewController (Configuration)

- (void)configureViews {
    [self configureFreshMakeupData];
    [self configureFreshSaleData];
    [self configureTableView];
    [self configureFreshTryData];
    [self createTransition];
}

#pragma marks - PrivateMethod
- (void)createTransition {
    self.materialTransition = [[MaterialTransition alloc] init];
    self.materialTransition.startFrame = CGRectMake([UIScreen screenWidth] - 25, -25, 50, 50);
    self.flipTransition = [[FlipTransition alloc] init];
    self.bookFlipTransition = [[BookFlipTransition alloc] init];
    self.bookFlipTransition.delegate = self;
}

- (void)configureTableView {
    self.currentGroupIndex = 0;
    self.groupNameArray = @[@"新鲜美妆", @"新鲜惠", @"新鲜试", @""];
    self.homeTableView.delegate = self;
    self.homeTableView.dataSource = self;
    [self.homeTableView registerNib:[UINib nibWithNibName:@"BookCollectionView" bundle:nil] forCellReuseIdentifier:@"BookCollectionView"];
}

- (void)configureFreshMakeupData {
    self.freshMakeupArray = @[
                              [[DetailInfomationTool alloc] initWithLaduree],
                              [[DetailInfomationTool alloc] initWithHelpClearSkinInfomation],
                              [[DetailInfomationTool alloc] initWithSK],
                              [[DetailInfomationTool alloc] initWithSisley],
                              [[DetailInfomationTool alloc] initWithBobblBrownInfomation],
                              [[DetailInfomationTool alloc] initWithBareMineralsInformation]
                              ];

}

- (void)configureFreshSaleData {
    
    self.freshSaleArray = @[
                            [[FreshSaleInfomationTool alloc] initWithMISSHA],
                            [[FreshSaleInfomationTool alloc] initWithBIODERMA],
                            [[FreshSaleInfomationTool alloc] initWithPanasonic],
                            [[FreshSaleInfomationTool alloc] initWithDALGCRInfomation],
                            [[FreshSaleInfomationTool alloc] initWithClarisonicInfomation],
                            [[FreshSaleInfomationTool alloc] initWithLilyBellInfomation]
                            ];

}

- (void)configureFreshTryData{
    
    self.freshTryArray = @[
                            [[FreshTryInformationTool alloc]initWithDanceLegend],
                            [[FreshTryInformationTool alloc]initWithBOBBI],
                            [[FreshTryInformationTool alloc]initWithForBeloveOne],
                            [[FreshTryInformationTool alloc] initWithLaduree],
                            [[FreshTryInformationTool alloc]initWithMAYSU],
                            [[FreshTryInformationTool alloc]initWithJurlique]
                           ];

}

@end
