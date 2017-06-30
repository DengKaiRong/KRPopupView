//
//  KRPopupView.h
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KRPopupViewModel.h"
#import "KRPopupViewCell.h"
#import "KRPopupHeaderView.h"

// 屏幕宽
#define KRSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
// 屏幕高
#define KRSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface KRPopupView : UIView

/**
 显示菜单
 */
+ (void)showTitle:(NSString *)title KRPopupViewModelArray:(NSMutableArray *)modelArray Target:(id)target;

/**
 隐藏KRPopupView
 */
- (void)hide;

@end
