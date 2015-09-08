//
//  feelingImageCell.m
//  FreshMakeupDemo
//
//  Created by winchance on 15/9/8.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "feelingImageCell.h"

@implementation feelingImageCell

- (void)awakeFromNib {
    // Initialization code
    UIGraphicsBeginImageContext(self.feelDashedImageView.frame.size);   //开始画线
    [self.feelDashedImageView.image drawInRect:CGRectMake(0, 0,self.feelDashedImageView.frame.size.width, self.feelDashedImageView.frame.size.height)];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);  //设置线条终点形状
    
    
    CGFloat lengths[] = {10,5};
    CGContextRef line = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(line, [UIColor redColor].CGColor);
    
    CGContextSetLineDash(line, 0, lengths, 2);  //画虚线
    CGContextMoveToPoint(line, 0.0, 20.0);    //开始画线
    CGContextAddLineToPoint(line, 310.0, 20.0);
    CGContextStrokePath(line);
    
    self.feelDashedImageView.image = UIGraphicsGetImageFromCurrentImageContext();
    
}
- (void)updateWithFeelImageView:(NSString *)feelImageView Feelllabel:(NSString *)feelllabel {
    self.feelImageView.image = [UIImage imageNamed:feelImageView];
    if ([feelllabel isEqualToString:@""]) {
        self.feelView.frame = CGRectMake(0, 0, 20, 0);
        
    } else {
        self.feelllabel.text = feelllabel;
    }
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
