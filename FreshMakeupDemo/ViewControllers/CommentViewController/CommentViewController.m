//
//  CommentViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "CommentViewController.h"
#import "CommentCell.h"
#import "CommentViewLayout.h"
#import "SelectionView.h"
#import "HeaderViewCell.h"
#import "UIScreen+Utility.h"


static NSString *CommentIdentifier = @"CommentCell";
static NSString *HeaderIdentifier = @"HeaderViewCell";
@interface CommentViewController ()

@end

@implementation CommentViewController
 + (instancetype)create {
    return [[CommentViewController alloc] initWithNibName:@"CommentViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initCollectionView];


}

- (void)initCollectionView{
    
    self.layout = [[CHTCollectionViewWaterfallLayout alloc] init];
    self.layout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
    self.layout.headerHeight = 0;
    self.layout.footerHeight = 0;
    self.layout.minimumColumnSpacing = 0;
    self.layout.minimumInteritemSpacing = 0;
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 64,[UIScreen screenWidth], [UIScreen screenHeight] - 64) collectionViewLayout:self.layout];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.collectionView registerNib:[UINib nibWithNibName:CommentIdentifier bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:CommentIdentifier];
    [self.collectionView registerNib:[UINib nibWithNibName:HeaderIdentifier bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:HeaderIdentifier];
        self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.collectionView];

}

#pragma mark - UICollectionViewDataSource
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize size;
    
    CommentCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"CommentCell" owner:nil options:nil] lastObject];

    if (indexPath.section == 0) {
        
        return CGSizeMake([UIScreen screenWidth] - 20, 200);
        
    }else if (indexPath.section == 1){
       
        size = CGSizeMake(([UIScreen screenWidth] - 20), [cell heightOfCell]);
        
    }
    return size;


}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 2;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;

    }
    return 100;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        
        CommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CommentIdentifier forIndexPath:indexPath];

        return cell;


    }
        HeaderViewCell *headerCell = [collectionView dequeueReusableCellWithReuseIdentifier:HeaderIdentifier forIndexPath:indexPath];

        return headerCell;

}


#pragma mark - UICollectionViewDelegateFlowLayout

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    return UIEdgeInsetsMake(0, 10, 0, 10);

}


- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section{
    NSInteger column = 0;
    if (section == 0) {
        column = 1;
    }
    if(section == 1){
        column = 2;
    }
    return column;
}

@end
