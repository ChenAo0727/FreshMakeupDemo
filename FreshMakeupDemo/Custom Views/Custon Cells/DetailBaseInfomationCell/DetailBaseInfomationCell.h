//
//  DetailBaseInfomationCell.h
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/4.
//  Copyright (c) 2015年 chenao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define DETAIL_BASE_COLLECTION_VIEW_CELL @"DetailBaseInfomationCell"
@interface DetailBaseInfomationCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *detaBaseView;
@property (weak, nonatomic) IBOutlet UIImageView *detaBaseTitleImageView;
@property (weak, nonatomic) IBOutlet UILabel *detaBaseTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detaBaseSpeakLabel;
@property (weak, nonatomic) IBOutlet UILabel *specificationLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *fitCrowdLabel;
- (CGFloat)heightOfCell;
- (CGSize)sizeOfCell;
- (void)updateWithTitleLabel:(NSString *)label;
- (void)updateWithSpeakLabel:(NSString *)label;
- (void)updatewithTitleImageView:(NSString *)imageString;
- (void)updateWithFitCrowd:(NSString *)fitCrowd origin:(NSString *)origin specification:(NSString *)specification price:(NSString *)price;
@end
