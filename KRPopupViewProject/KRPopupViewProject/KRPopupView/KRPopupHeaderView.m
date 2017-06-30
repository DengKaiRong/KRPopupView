//
//  KRPopupHeaderView.m
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import "KRPopupHeaderView.h"

@implementation KRPopupHeaderView

#pragma mark - =============生命周期================

#pragma mark - =============代理方法=================

#pragma mark - =============事件处理=================

- (IBAction)backBtClick:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(clickBackButton)]) {
        [self.delegate clickBackButton];
    }
    
}

#pragma mark - =============网络数据处理==============

#pragma mark - =============声明的成员方法和类方法======

#pragma mark - =============私有方法=================

#pragma mark - =============访问器方法===============

@end
