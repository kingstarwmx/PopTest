//
//  HYPopView.h
//  PopTest
//
//  Created by MrZhangKe on 16/3/3.
//  Copyright © 2016年 huayun. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, HYPopViewAnimation) {
    /// Opacity animation
    HYPopViewAnimationFade,
    /// Opacity + scale animation (zoom in when appearing zoom out when disappearing)
    HYPopViewAnimationZoom,
    /// Opacity + scale animation (zoom out style)
    HYPopViewAnimationZoomOut,
    /// Opacity + scale animation (zoom in style)
    HYPopViewAnimationZoomIn
};

@interface HYPopView : UIView

/**
 *  初始化方法
 *
 *  @param view 需要传一个用来加载弹出动画的view
 *
 *  @return 本身
 */
- (instancetype)initWithView:(UIView *)view;

/**
 *  快捷方法:弹出显示在一个view上
 *
 *  @param view     需要在这个view上面显示
 *  @param animated 是否需要动画
 *
 *  @return 本身
 */
+ (instancetype)showPopAddedTo:(UIView *)view animated:(BOOL)animated;

/**
 *  快捷方法:弹出文字显示在一个view上
 *
 *  @param view     需要在这个view上面显示
 *  @param text     需要显示的文字
 *  @param animated 是否需要动画
 */
+ (instancetype)showPopAddedTo:(UIView *)view withText:(NSString *)text animated:(BOOL)animated;


+ (instancetype)showPopAddedTo:(UIView *)view withImage:(UIImage *)image animated:(BOOL)animated;

+ (instancetype)showPopAddedTo:(UIView *)view withImages:(NSArray *)images animated:(BOOL)animated;


- (void)hideAnimated:(BOOL)animated;

@end
