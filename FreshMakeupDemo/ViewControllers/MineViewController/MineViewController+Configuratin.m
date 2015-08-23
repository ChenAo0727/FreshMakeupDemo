//
//  MineViewController+Configuratin.m
//  FreshMakeupDemo
//
//  Created by Mac on 15/8/20.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "MineViewController+Configuratin.h"
#import "MineTableViewCell.h"
#import "UIColor+Utility.h"
@implementation MineViewController (Configuratin)
- (void)mineConfigureViews {
    [self mineTableViewEdit];
    [self mineViewEdit];
    [self mineGuideViewEdit];
}

- (void)mineTableViewEdit {
    self.mineViewControllerDataSource = [MineViewControllerDataSource new];
    self.mineTableView.backgroundColor = [UIColor colorFromHexCode:@"#9bd5d3"];
    self.mineTableView.delegate = self;
    self.mineTableView.dataSource = self.mineViewControllerDataSource;
    self.mineTableView.scrollEnabled = NO;
    self.mineTableView.separatorStyle = NO;
    [self.mineTableView registerNib:[UINib nibWithNibName:@"MineTableViewCell" bundle:nil] forCellReuseIdentifier:MINE_TABLEVIEW_CELL];
    self.mineEndView.backgroundColor = [UIColor colorFromHexCode:@"#9bd5d3"];
}
- (void)mineViewEdit {
    self.mineEndView.backgroundColor = [UIColor colorFromHexCode:@"#9bd5d3"];
    self.mineEndLabel.layer.borderColor = [UIColor whiteColor].CGColor;
    self.mineEndLabel.layer.borderWidth = 2;
    self.mineEndLabel.textAlignment = NSTextAlignmentCenter;
}
- (void)mineGuideViewEdit {
    self.mineGuideimageView = [[UIImageView alloc] initWithFrame:(CGRectMake(0, self.mineGuideView.frame.size.height + 5, 8, 47))];
    self.mineGuideimageView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.mineGuideimageView];
}
@end
