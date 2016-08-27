//
//  LFTopDrawerViewController.h
//  LFTopDrawerViewDemo
//
//  Created by 刘雨笛 on 16/8/27.
//  Copyright © 2016年 刘雨笛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LFTopDrawerViewController : UIViewController<UIScrollViewDelegate>

//顶部视图，默认高度为屏幕宽度的2/3
@property (nonatomic, strong) UIView *topView;

//主视图，必须是UIScrollView以及他的子类
@property (nonatomic, strong) UIScrollView *bottomView;

//顶部视图高度，默认为屏幕的2/3
@property (nonatomic) float heightOfTopView;

//顶部预留的像素位置，默认50个像素
@property (nonatomic) float heightOfNavigationView;

/**
 *  初始化视图控制器
 *
 *  @param topView    头视图指针
 *  @param bottomView 主视图指针
 *
 *  @return 返回本身
 */
- (id)initWithTopView:(id)topView withBottomView:(id)bottomView;

@end
