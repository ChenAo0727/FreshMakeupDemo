//
//  LawnViewController+Configuration.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/9.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import "LawnViewController+Configuration.h"
#import "LawnCell.h"
@implementation LawnViewController (Configuration)
- (void)configureViews{
    [self tableViewEdit];

}
- (void)tableViewEdit {
    
    self.lawnDataSource  = [LawnViewControllerDataSource new];
    self.LawnTabelView.delegate = self;
    self.LawnTabelView.dataSource = self.lawnDataSource;
    [self.LawnTabelView registerNib:[UINib nibWithNibName:@"LawnCell" bundle:nil] forCellReuseIdentifier:LAWN_CELL];
}

@end
