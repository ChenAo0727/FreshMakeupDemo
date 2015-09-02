//
//  FreashSaleViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FreashSaleViewController.h"
#import "FreashSaleViewController+Configuration.h"
#import "TextCell.h"
#import "TagsTableViewCell.h"
@interface FreashSaleViewController ()

@end

@implementation FreashSaleViewController
+ (instancetype)create {
    return [[FreashSaleViewController alloc] initWithNibName:@"FreashSaleViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureViews];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 380;
    } else if (indexPath.row == 1) {
        TextCell *textCell = [tableView dequeueReusableCellWithIdentifier:TEXT_CELL];
        CGFloat cellHeight = [textCell heightOfCell];
       return cellHeight;
    } else if (indexPath.row == 2) {
        TagsTableViewCell *tagsCell = [[[NSBundle mainBundle] loadNibNamed:@"TagsTableViewCell" owner:nil options:nil] lastObject];
        [tagsCell layoutIfNeeded];
        return [tagsCell heightOfCell];

    } else if (indexPath.row == 3) {
        return 50;
    } else if (indexPath.row == 4) {
        return 170;
    } else if (indexPath.row == 7) {
        return 50;
    } else {
        return 0;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
