//
//  KRPopupView.m
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import "KRPopupView.h"

#define KR_HEADERVIEW_HEIGHT 50 //头部视图的高度
#define KR_CELLVIEW_HEIGHT   110//每个cell的高度
#define KR_DURATION_TIME     0.4//每个cell动画显示时间

@interface KRPopupView()<KRPopupHeaderViewDelegate>

@end

@implementation KRPopupView

#pragma mark - =============生命周期================

#pragma mark - =============代理方法=================

#pragma mark - KRPopupHeaderViewDelegate

//点击返回按钮
- (void)clickBackButton{
    [self hide];
}


#pragma mark - =============事件处理=================

#pragma mark - =============网络数据处理==============

#pragma mark - =============声明的成员方法和类方法======

/**
 显示菜单
 */
+ (void)showTitle:(NSString *)title KRPopupViewModelArray:(NSMutableArray *)modelArray Target:(id)target{
    
    KRPopupView * krPopupView = [[KRPopupView alloc] initWithFrame:CGRectMake(0, 20, KRSCREEN_WIDTH, KRSCREEN_HEIGHT)];
    
    if ([[target class] isSubclassOfClass:[UIViewController class]]) {
        
        UIViewController * vc = target;
        [vc.view addSubview:krPopupView];
        
    }else if([[target class] isSubclassOfClass:[UIView class]]){
        
        UIView * view = target;
        [view addSubview:krPopupView];
        
    }else{
        NSLog(@"KRPopupView ==>> target对象非法!");
    }
    
    NSMutableArray * viewArray = [NSMutableArray new];
    
    for (int i = 0; i < modelArray.count + 1; i++) {
        
        if (!i) {
            
            KRPopupHeaderView * headerView = [[[NSBundle mainBundle] loadNibNamed:@"KRPopupHeaderView" owner:self options:nil] firstObject];
            
            headerView.frame           = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, KR_HEADERVIEW_HEIGHT);
            headerView.alpha           = 0.2f;
            headerView.delegate        = krPopupView;
            headerView.titleLabel.text = title;
            
            [viewArray addObject:headerView];
            [krPopupView addSubview:headerView];
            
        }else{
            
            KRPopupViewCell * cell = [[[NSBundle mainBundle] loadNibNamed:@"KRPopupViewCell" owner:self options:nil] firstObject];
            cell.frame             = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 120);
            cell.alpha             = 0.2f;
            cell.tag               = i - 1;
            cell.delegate          = target;
            cell.model             = modelArray[i-1];
            
            [viewArray addObject:cell];
            [krPopupView addSubview:cell];
        }
    }
    
    [krPopupView showWithViewArray:viewArray];
}

- (void)hide{
    
    [UIView animateWithDuration:0.5 animations:^{
        self.layer.frame  = CGRectMake(0, KRSCREEN_HEIGHT, 0, 0);
        self.alpha  = 0.f;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
}

#pragma mark - =============私有方法=================

- (void)showWithViewArray:(NSMutableArray *)array{
    
    static double durationTime;
    
    durationTime = 0.0;
    
    for (int i = 0; i < array.count; i++) {
        
        if (!i) {
            
            KRPopupHeaderView * headerView = [array firstObject];
            [UIView animateWithDuration:KR_DURATION_TIME animations:^{
                headerView.frame = CGRectMake(0, 0, KRSCREEN_WIDTH, KR_HEADERVIEW_HEIGHT);
                headerView.alpha = 1.f;
            }];
            
        }else{
            
            KRPopupViewCell * cell = array[i];
            [UIView animateWithDuration:KR_DURATION_TIME delay:durationTime options:UIViewAnimationOptionCurveEaseOut animations:^{
                cell.frame = CGRectMake(0, (i - 1) * KR_CELLVIEW_HEIGHT + KR_HEADERVIEW_HEIGHT, KRSCREEN_WIDTH, KR_CELLVIEW_HEIGHT);
                cell.alpha = 1.f;
            } completion:nil];
            
        }
        
        //增加延迟
        durationTime += KR_DURATION_TIME - 0.1;
    }
    
}

#pragma mark - =============访问器方法===============


@end
