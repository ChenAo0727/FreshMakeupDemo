//
//  ChatCell.m
//  FreshMakeupDemo
//
//  Created by chenao on 15/9/4.
//  Copyright (c) 2015年 guoshencheng. All rights reserved.
//

#import "ChatCell.h"

@implementation ChatCell

- (void)awakeFromNib {
  

}
+ (instancetype)create {
    return [[[NSBundle mainBundle]loadNibNamed:@"ChatCell" owner:nil options:nil] lastObject];
}
- (CGFloat)cellHeight{

    return self.answerContent.frame.size.height +self.answerContent.frame.origin.y ;

}
@end
