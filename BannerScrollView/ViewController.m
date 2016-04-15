//
//  ViewController.m
//  BannerScrollView
//
//  Created by admin on 16/4/15.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "BannerScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //图片轮播
    [self setupInfiniteScrollView];

}

//图片轮播
- (void)setupInfiniteScrollView{
    //取消自动设置Inset
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    BannerScrollView *scrollView = [[BannerScrollView alloc] init];
    //尺寸
    scrollView.frame = CGRectMake(0, 64, self.view.frame.size.width, 180);
    //图片切换时间
    scrollView.time = 1;
    //图片数组
    scrollView.images = @[
                          [UIImage imageNamed:@"img_00"],
                          [UIImage imageNamed:@"img_01"],
                          [UIImage imageNamed:@"img_02"],
                          [UIImage imageNamed:@"img_03"],
                          [UIImage imageNamed:@"img_04"]
                          ];
    
    [self.view addSubview:scrollView];
    
    
    //竖直方向的滚动
    BannerScrollView *scrollView1 = [[BannerScrollView alloc] init];
    
    scrollView1.frame = CGRectMake(0, 250, self.view.frame.size.width, 100);
    scrollView1.images = @[
                           [UIImage imageNamed:@"img_00"],
                           [UIImage imageNamed:@"img_01"],
                           [UIImage imageNamed:@"img_02"],
                           [UIImage imageNamed:@"img_03"],
                           [UIImage imageNamed:@"img_04"]
                           ];
    
    [self.view addSubview:scrollView1];
    //设置竖直方向滚动
    scrollView1.infiniteScrollVertical = YES;
    
}


@end
