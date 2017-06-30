//
//  KRPopupViewModel.m
//  KRPopupViewProject
//
//  Created by dengsir on 31/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import "KRPopupViewModel.h"

@implementation KRPopupViewModel

/**
 快速创建model
 
 @param title 标题
 @param content 内容
 @param imageName 图片名
 @return 对象
 */
+ (KRPopupViewModel *)modelWithTitle:(NSString *)title content:(NSString *)content imageName:(NSString *)imageName{
    
    KRPopupViewModel *model = [KRPopupViewModel new];
    model.title             = title;
    model.content           = content;
    model.imageName         = imageName;
    
    return model;
}

@end
