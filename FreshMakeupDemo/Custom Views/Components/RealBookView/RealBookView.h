//
//  RealBookView.h
//  RealBookDemo
//
//  Created by guoshencheng on 8/28/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailInfomationTool.h"
#import "FreshSaleInfomationTool.h"
#import "FreshTryInformationTool.h"
#define BOOK_COLLECTIONVIEW_CELL @"BookCollectionViewCell"

typedef void (^DidSelectCellBllock) (UICollectionViewCell * cell);

@interface RealBookView :UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *coverContainerView;
@property (weak, nonatomic) IBOutlet UIImageView *converImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIView *backgroundContanerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *coverViewRightConstraint;
@property (weak, nonatomic) IBOutlet UIImageView *nextViewControllerImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nextViewRightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nextViewBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nextViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nextViewTopConstraint;
@property (weak, nonatomic) IBOutlet UIImageView *priceImageView;

@property (strong, nonatomic) DidSelectCellBllock didSelectCellBllock;
@property (strong, nonatomic) NSIndexPath *indexPath;
@property (strong, nonatomic) DetailInfomationTool *detailInfomationTool;
@property (strong, nonatomic) FreshSaleInfomationTool *freshSaleInfomationTool;
@property (strong, nonatomic) FreshTryInformationTool *freshTryInformationTool;
- (void)updateToOpenBookStatus;
- (void)updateToCloseBookStatus;
- (void)animationToOpenBookWithCompletion:(void (^)(BOOL finished))completion;
- (void)animationToCloseBookWithCompletion:(void (^)(BOOL finished))completion;
+ (instancetype)create;
- (void)updateWithCoverImage:(UIImage *)coverImage title:(NSString *)title shortComment:(NSString *)shortComment priceImage:(UIImage *)priceImage;
- (void)updateWithDetailInfomationTool:(DetailInfomationTool *)detailInfomationTool;
- (void)updateWithFreshSaleInfomationTool:(FreshSaleInfomationTool *)freshSaleInfomationTool;
- (void)updateWithFreshTryInformationTool:(FreshTryInformationTool *)freshTryInformationTool;
@end
