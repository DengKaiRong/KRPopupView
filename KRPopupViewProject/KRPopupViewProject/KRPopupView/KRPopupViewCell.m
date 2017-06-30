//
//  KRPopupViewCell.m
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import "KRPopupViewCell.h"

@implementation KRPopupViewCell

#pragma mark - =============生命周期=================

- (void)awakeFromNib{
    [super awakeFromNib];
}

#pragma mark - =============代理方法=================

#pragma mark - =============事件处理=================

- (IBAction)leftBtClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(clickLeftButton:index:)]) {
        _model?nil:NSLog(@"KRPopupViewCell的model为nil! 请仔细检查是否已赋值model.");
        [self.delegate clickLeftButton:_model index:self.tag];
    }
}

- (IBAction)rightBtClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(clickLeftButton:index:)]) {
        _model?nil:NSLog(@"KRPopupViewCell的model为nil! 请仔细检查是否已赋值model.");
        [self.delegate clickRightButton:_model index:self.tag];
    }
}

- (IBAction)clickCell:(UITapGestureRecognizer *)sender {
    if ([self.delegate respondsToSelector:@selector(clickCell:index:)]) {
        _model?nil:NSLog(@"KRPopupViewCell的model为nil! 请仔细检查是否已赋值model.");
        [self.delegate clickCell:_model index:self.tag];
    }
}


#pragma mark - =============网络数据处理==============

#pragma mark - =============声明的成员方法和类方法======

#pragma mark - =============私有方法=================

#pragma mark - =============访问器方法===============

-(void)setModel:(KRPopupViewModel *)model{
    
    _model = model;

    //赋值
    _titleLabel.text   = model.title;
    _contentLabel.text = model.content;
    _imageView.image   = [UIImage imageNamed:model.imageName];
    
}

@end
