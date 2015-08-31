//
//  SelectionView.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/24/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SelectionView.h"
#import "UIColor+Utility.h"

@implementation SelectionView

+ (instancetype)create {
    SelectionView *selectionView = [[[NSBundle mainBundle] loadNibNamed:@"SelectionView" owner:nil options:nil] lastObject];
   selectionView.translatesAutoresizingMaskIntoConstraints = NO;
    return selectionView;
}

- (void)awakeFromNib {
    self.processView.layer.cornerRadius = 2;
    self.processView.layer.borderWidth = 0.5;
    self.processView.layer.borderColor = [[UIColor colorWithIntRed:196 green:132 blue:57] CGColor];
}

- (IBAction)onClickLeftButton:(id)sender {

}

- (IBAction)onClickRightButton:(id)sender {

    
}

@end
