
//
//  LFTopDrawerViewController.m
//  LFTopDrawerViewDemo
//
//  Created by 刘雨笛 on 16/8/27.
//  Copyright © 2016年 刘雨笛. All rights reserved.
//

#import "LFTopDrawerViewController.h"
@interface LFTopDrawerViewController()


@end

@implementation LFTopDrawerViewController

- (id)initWithTopView:(id)topView withBottomView:(id)bottomView
{
    if (self)
    {
        _topView = topView;
        _bottomView = bottomView;
        _bottomView.delegate = self;
        _heightOfTopView = [UIScreen mainScreen].bounds.size.width * 2.0f/3.0f;
        _heightOfNavigationView = 50;
        [self.view addSubview:self.topView];
        [self.view addSubview:self.bottomView];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self settingData];
}

- (void)settingData
{
    self.topView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, _heightOfTopView);
    self.bottomView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - self.heightOfNavigationView);
    self.bottomView.transform = CGAffineTransformMakeTranslation(0, _heightOfTopView);
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView == self.bottomView)
    {
        static CGFloat offsetY1 = 0;
        offsetY1 += scrollView.contentOffset.y;
        
        if (offsetY1 > self.heightOfTopView - self.heightOfNavigationView)
        {
            offsetY1 = self.heightOfTopView - self.heightOfNavigationView;
        }
        if (offsetY1 < 0 )
        {
            offsetY1 = 0;
        }
        if (scrollView.contentOffset.y > 0)
        {
            
            if (offsetY1 < self.heightOfTopView - self.heightOfNavigationView)
            {
                self.bottomView.transform = CGAffineTransformMakeTranslation(0, self.heightOfTopView - offsetY1);
                self.topView.transform = CGAffineTransformMakeTranslation(0,- offsetY1);
                scrollView.contentOffset = CGPointMake(0, 0);
            }
            else
            {
                self.bottomView.transform = CGAffineTransformMakeTranslation(0, self.heightOfTopView - offsetY1);
                self.topView.transform = CGAffineTransformMakeTranslation(0, - offsetY1);
            }
        }
        else if (scrollView.contentOffset.y < 0)
        {
            if(offsetY1 > 0)
            {
                self.bottomView.transform = CGAffineTransformMakeTranslation(0,self.heightOfTopView  - offsetY1);
                self.topView.transform = CGAffineTransformMakeTranslation(0,- offsetY1);
                scrollView.contentOffset = CGPointMake(0, 0);
            }
            else
            {
                self.bottomView.transform = CGAffineTransformMakeTranslation(0,self.heightOfTopView );
                self.topView.transform = CGAffineTransformMakeTranslation(0,0);
            }
            
        }
        

    }
}

@end
