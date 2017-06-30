//
//  ViewController.m
//  KRPopupViewProject
//
//  Created by dengsir on 30/03/2017.
//  Copyright © 2017 dengsir. All rights reserved.
//

#import "ViewController.h"
#import "KRPopupView.h"

@interface ViewController ()<KRPopupViewCellDelegate>

@end

@implementation ViewController

#pragma mark - =============生命周期================

#pragma mark - 视图加载数据完毕

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //设置UI
    [self setUI];
    //初始化数据
    [self setData];
    
}

#pragma mark - 视图将要显示
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

#pragma mark - 视图将要消失
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}

#pragma mark - =============代理方法=================


#pragma mark - KRPopupViewCellDelegate

//点击左按钮
- (void)clickLeftButton:(KRPopupViewModel *)model index:(NSInteger)index{
    NSLog(@"点击 第 %ld 行 左边按钮",index);
}

//点击右按钮
- (void)clickRightButton:(KRPopupViewModel *)model index:(NSInteger)index{
    NSLog(@"点击 第 %ld 行 右边按钮",index);
}

//点击cell
- (void)clickCell:(KRPopupViewModel *)model index:(NSInteger)index{
    NSLog(@"点击 第 %ld 行 Cell",index);
}

#pragma mark - =============事件处理=================

- (void)bt{
    
    //请按照下面步骤使用
    
    //1.创建model数组
    NSMutableArray<KRPopupViewModel *> * modelArray = [NSMutableArray new];
    
    //2.创建model
    NSArray * titleArray     = @[@"Piechart",
                                 @"Docments",
                                 @"Globes",
                                 @"Comments"];

    NSArray * contentArray   = @[@"Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                 @"Proin faucibus sapien sed dui fermentum",
                                 @"Mauris id justo ac ante porta sagittis egestas vel erat",
                                 @"Cras ut eros at urna efficitur vehicula sed nec tellus"];

    NSArray * imageNameArray = @[@"piechart",
                                 @"docments",
                                 @"globes",
                                 @"comments"];
    
    for (int i = 0; i < titleArray.count; i++) {
        
        KRPopupViewModel *model = [KRPopupViewModel modelWithTitle:titleArray[i] content:contentArray[i] imageName:imageNameArray[i]];
        [modelArray addObject:model];
        
    }
    
    //3.显示
    [KRPopupView showTitle:@"JUST DO IT" KRPopupViewModelArray:modelArray Target:self];
    
}

#pragma mark - =============网络数据处理==============

#pragma mark - =============声明的成员方法和类方法======

#pragma mark - =============私有方法=================

#pragma mark - 初始化UI
//初始化UI
- (void)setUI{
    
    //添加按钮
    UIButton * bt = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [bt addTarget:self action:@selector(bt) forControlEvents:UIControlEventTouchUpInside];
    bt.center     = self.view.center;
    [self.view addSubview:bt];
    
}

#pragma mark - 初始化数据
//初始化数据
- (void)setData{
    
}

#pragma mark - =============访问器方法===============


@end
