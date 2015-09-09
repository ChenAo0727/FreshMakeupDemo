//
//  CommentViewController.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 8/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "CommentViewController.h"
#import "CommentViewLayout.h"
#import "SelectionView.h"
#import "HeaderViewCell.h"
#import "UIScreen+Utility.h"
#import "NewCommentCell.h"


static NSString *CommentIdentifier = @"CommentCell";
static NSString *HeaderIdentifier = @"HeaderViewCell";
static NSString *NewCommentIdentifier = @"NewCommentCell";
@interface CommentViewController ()

@end

@implementation CommentViewController
 + (instancetype)create {
    return [[CommentViewController alloc] initWithNibName:@"CommentViewController" bundle:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initCollectionView];
    [self addDetailView];

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
    [self.collectionView registerNib:[UINib nibWithNibName:@"NewCommentCell" bundle:nil ]forCellWithReuseIdentifier:@"NewCommentCell"];
    [self.view addSubview:self.collectionView];
}

- (void)addDetailView {
    self.detailCommentView = [DetailCommentView create];
    [self.view addSubview:self.detailCommentView];
    [self.detailCommentView setLeftSpace:10];
    [self.detailCommentView setRightSpace:-10];
    [self.detailCommentView setTopSpace:20];
    [self.detailCommentView setBottomSpace:-20];
    self.detailCommentView.hidden = YES;
}

#pragma mark - UICollectionViewDataSource
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize size;
    
    CommentCell *cell = [CommentCell create];

    if (indexPath.section == 0 ) {
        
        return CGSizeMake([UIScreen screenWidth] - 20, 200);
        
    }else if (indexPath.section == 1 || indexPath.section == 3){
        [cell updateWithCommentInfomationTool:[self.comments objectAtIndex:indexPath.row]];
        size = [cell sizeOfCell];
        
    }if (indexPath.section == 2) {
        return CGSizeMake([UIScreen screenWidth] - 20, 40);
    }
    return size;


}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 4;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;

    }else if (section == 1) {
        return 6;
    }else if (section == 2){
    
        return 1;
    }
    
        return 6;

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        HeaderViewCell *headerCell = [collectionView dequeueReusableCellWithReuseIdentifier:HeaderIdentifier forIndexPath:indexPath];
        
        return headerCell;
   
    }
    if (indexPath.section == 1 || indexPath.section == 3) {
        
        CommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CommentIdentifier forIndexPath:indexPath];
        [cell updateWithCommentInfomationTool:[self.comments objectAtIndex:indexPath.row]];
        if (0 == indexPath.row % 2) {
            cell.rightLine.hidden = NO;
        } else {
            cell.rightLine.hidden = YES;
        }
        cell.delegate = self;
        return cell;


    }
    NewCommentCell *NewCommentCell = [collectionView dequeueReusableCellWithReuseIdentifier:NewCommentIdentifier forIndexPath:indexPath];
    return NewCommentCell;
    

}

- (void)CommentCell:(CommentCell *)commentCell didClickCommentButtonWithTag:(NSInteger)tag {
    self.detailCommentView.hidden = NO;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    return UIEdgeInsetsMake(0, 10, 0, 10);

}


- (NSInteger)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout columnCountForSection:(NSInteger)section{
    NSInteger column = 0;
    if (section == 0 || section == 2) {
        column = 1;
    }
    if(section == 1 || section == 3){
        column = 2;
    }
    return column;
}

- (IBAction)backClick:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
