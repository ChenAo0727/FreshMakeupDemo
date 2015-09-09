//
//  CommentInfomationTool.m
//  FreshMakeupDemo
//
//  Created by guoshencheng on 9/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "CommentInfomationTool.h"

@implementation CommentInfomationTool

+ (instancetype)createWithAvatar:(UIImage *)avatar nickName:(NSString *)nickName skinProperty:(NSInteger)skinProperty gender:(BOOL)isMale age:(NSString *)age identity:(NSString *)identity commentText:(NSString *)commentText {
    CommentInfomationTool *commentInfomationTool = [[CommentInfomationTool alloc] init];
    commentInfomationTool.avatar = avatar;
    commentInfomationTool.nickName = nickName;
    commentInfomationTool.skinProperty = skinProperty;
    commentInfomationTool.isMale = isMale;
    commentInfomationTool.age = age;
    commentInfomationTool.identity = identity;
    commentInfomationTool.commentText = commentText;
    return commentInfomationTool;
}

+ (NSArray *)ladureeCommentArray {
    return @[[CommentInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image1.jpg"] nickName:@"Christina_依依" skinProperty:0 gender:NO age:@"25" identity:@"美妆控" commentText:@"它都长成这样了，对它有别的什么要求都是过份的！静静欣赏对着发花痴就好了！"],
             [CommentInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image4.jpg"] nickName:@"tiffany" skinProperty:1 gender:NO age:@"26" identity:@"颜值赛汤唯" commentText:@"颜色并不是很出色，拿到的时候花瓣盒子里的碎屑让我看着很糟心。"],
             [CommentInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image2.jpg"] nickName:@"Moxa_163" skinProperty:1 gender:NO age:@"31" identity:@"喜欢甜食" commentText:@"玫瑰花瓣太美腻，简直不忍心用，颜值无法言喻。"],
             [CommentInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image5.jpg"] nickName:@"梳子" skinProperty:2 gender:NO age:@"24" identity:@"面膜党" commentText:@"可能我本来就不是个萌系的女生吧。真的让我觉得很累赘很鸡肋。"],
             [CommentInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image3.jpg"] nickName:@"王絮涵" skinProperty:2 gender:NO age:@"23" identity:@"瓶子控" commentText:@"会上瘾，开始入的7号，后来又入的2号加限量盒子，太美了，冲着限量盒子也要入啊。"],
             [CommentInfomationTool createWithAvatar:[UIImage imageNamed:@"avatar_data_image6.jpg"] nickName:@"蝴蝶妃妃" skinProperty:2 gender:NO age:@"29" identity:@"YSL死忠" commentText:@"还是我家YSL的粉好用！"]];
}

@end
