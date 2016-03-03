//
//  HYPopView.m
//  PopTest
//
//  Created by MrZhangKe on 16/3/3.
//  Copyright © 2016年 huayun. All rights reserved.
//

#import "HYPopView.h"

@implementation HYPopView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpViews];
    }
    return self;
}

- (instancetype)initWithView:(UIView *)view{
    
    return [self initWithFrame:view.bounds];
}

+ (instancetype)showPopAddedTo:(UIView *)view animated:(BOOL)animated{
    
    return [[self alloc] initWithFrame:view.bounds];
}

+ (instancetype)showPopAddedTo:(UIView *)view withText:(NSString *)text animated:(BOOL)animated{
    
}


+ (instancetype)showPopAddedTo:(UIView *)view withImage:(UIImage *)image animated:(BOOL)animated{
    
}

+ (instancetype)showPopAddedTo:(UIView *)view withImages:(NSArray *)images animated:(BOOL)animated{
    
}


#pragma 初始化各种view
- (void)setUpViews{
    
}

@end
