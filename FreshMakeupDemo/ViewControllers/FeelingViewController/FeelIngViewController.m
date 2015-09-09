//
//  FeelIngViewController.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "FeelIngViewController.h"
#import "UIScreen+Utility.h"
#import "FeelIngViewController+Configuration.h"
#import "feelingImageCell.h"
#import "FeelingTextCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
@interface FeelIngViewController ()

@end

@implementation FeelIngViewController
+ (instancetype)create {
    return [[FeelIngViewController alloc] initWithNibName:@"FeelIngViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureViews];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row] objectForKey:@"image"]) {
        feelingImageCell *cell = [tableView dequeueReusableCellWithIdentifier:FEELING_IMAGE_CELL];
        CGRect frame = cell.frame;
        frame.size.width = [UIScreen screenWidth];
        cell.frame = frame;
        CGFloat cellHeight = [cell getCellHeight];
        return cellHeight;
    } else if([[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row] objectForKey:@"text"]){
        
        return [tableView fd_heightForCellWithIdentifier:FEELING_TEXT_CELL configuration:^(id cell) {
            
            [cell updateFeelingTextLabel:[[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row]objectForKey:@"text"] WithTag:[[self.feelingInformationTool.feelIngArray objectAtIndex:indexPath.row] objectForKey:@"hasTag"]];
        }];
    }
    return 0;
}
- (IBAction)returnAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
