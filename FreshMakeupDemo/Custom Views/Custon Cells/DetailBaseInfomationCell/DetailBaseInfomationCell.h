//
//  DetailBaseInfomationCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/4.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define DETAIL_BASE_COLLECTION_VIEW_CELL @"DetailBaseInfomationCell"
@interface DetailBaseInfomationCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *detaBaseView;
@property (weak, nonatomic) IBOutlet UILabel *detaBaseTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detaBaseSpeakLabel;
- (CGFloat)heightOfCell;
- (CGSize)sizeOfCell;
- (void)updateWithTitleLabel:(NSString *)label;
- (void)updateWithSpeakLabel:(NSString *)label;
@end
