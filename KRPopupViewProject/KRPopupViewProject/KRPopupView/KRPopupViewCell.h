//
//  KRPopupViewCell.h
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KRPopupViewModel.h"

@protocol KRPopupViewCellDelegate <NSObject>

@required
//点击左按钮
- (void)clickLeftButton:(KRPopupViewModel *)model index:(NSInteger)index;
//点击右按钮
- (void)clickRightButton:(KRPopupViewModel *)model index:(NSInteger)index;

@optional
//点击cell
- (void)clickCell:(KRPopupViewModel *)model index:(NSInteger)index;

@end

@interface KRPopupViewCell : UIView

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIButton *leftBt;
@property (weak, nonatomic) IBOutlet UIButton *rightBt;

/**
 *  model
 */
@property (nonatomic, strong) KRPopupViewModel * model;

/**
 *  代理
 */
@property (nonatomic, weak) id<KRPopupViewCellDelegate> delegate;

@end
