//
//  CommentViewCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/2.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "CommentViewCell.h"

@implementation CommentViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
    self.userImage.layer.cornerRadius = self.frame.size.width / 2;
    self.userImage.layer.borderColor = [UIColor greenColor].CGColor;
    self.userImage.layer.borderWidth = 1.0;

}

- (void)layoutSubviews{
    [super layoutSubviews];


}

- (CGFloat)getCommentHeight:(NSString *)commentString{
    NSDictionary *dic = @{
                          NSFontAttributeName:[UIFont fontWithName: @"Helvetica(Neue)"  size:12]
                          
                          };

    


}
@end
