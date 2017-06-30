//
//  KRPopupHeaderView.h
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KRPopupHeaderViewDelegate <NSObject>

@required

//返回按钮点击代理
- (void)clickBackButton;

@end

@interface KRPopupHeaderView : UIView

@property (weak, nonatomic) IBOutlet UIButton *backBt;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

/**
 *  代理
 */
@property (nonatomic, weak) id<KRPopupHeaderViewDelegate> delegate;

@end
