//
//  BannerScrollView.h
//  BannerScrollView
//
//  Created by admin on 16/4/15.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BannerScrollView : UIView


/**
 *  需要添加的图片数组
 */
@property (strong, nonatomic) NSArray *images;

/**
 *  控制水平竖直方向的滚动  默认为水平方向  设置为YES时为竖直方向
 */
@property (assign, nonatomic, getter=isInfiniteScrollVertical) BOOL infiniteScrollVertical;


/** 图片切换时间 */
@property(nonatomic, assign) CGFloat time;


@end
