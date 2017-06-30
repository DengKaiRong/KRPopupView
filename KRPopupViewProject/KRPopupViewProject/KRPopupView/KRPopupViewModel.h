//
//  KRPopupViewModel.h
//  KRPopupViewProject
//
//  Created by dengsir on 31/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KRPopupViewModel : NSObject

/**
 *  cell标题
 */
@property (nonatomic, copy) NSString * title;

/**
 *  cell内容
 */
@property (nonatomic, copy) NSString * content;

/**
 *  icon图片名
 */
@property (nonatomic, copy) NSString * imageName;


/**
 快速创建model

 @param title 标题
 @param content 内容
 @param imageName 图片名
 @return 对象
 */
+ (KRPopupViewModel *)modelWithTitle:(NSString *)title content:(NSString *)content imageName:(NSString *)imageName;

@end
