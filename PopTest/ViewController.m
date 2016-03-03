//
//  ViewController.m
//  PopTest
//
//  Created by MrZhangKe on 16/3/3.
//  Copyright © 2016年 huayun. All rights reserved.
//

#import "ViewController.h"
#import <POP.h>

@interface ViewController ()
@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.frame = CGRectMake(0, 0, 50, 50);
    self.btn.center = self.view.center;
    self.btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.btn];
    
    [self.btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    UIImage *image1 = [UIImage imageNamed:@"4"];
    CGSize size = image1.size;
    NSLog(@"%f", size.width);
    
    
}

- (void)btnClicked:(UIButton *)sender{
    
    //Basic animations can be used to interpolate values over a specified time period. To use an ease-in ease-out animation to animate a view's alpha from 0.0 to 1.0 over the default duration:
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewCenter];
//    anim.fromValue = @(0.0);
    anim.duration = 0.3;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = [NSValue valueWithCGPoint:CGPointMake(50, 50)];
    [self.btn pop_addAnimation:anim forKey:@"big"];
    
    /*
    //Spring animations can be used to give objects a delightful bounce. In this example, we use a spring animation to animate a layer's bounds from its current value to (0, 0, 400, 400):
    POPSpringAnimation *anim1 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];
    anim.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 400, 400)];
    [self.btn.layer pop_addAnimation:anim1 forKey:@"size"];
    
    //Decay animations can be used to gradually slow an object to a halt. In this example, we decay a layer's positionX from it's current value and velocity 1000pts per second:
    POPDecayAnimation *anim2 = [POPDecayAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    anim2.velocity = @(1000.);
    [self.btn.layer pop_addAnimation:anim2 forKey:@"slide"];
    */
    
    //basic animation
    /*
    CABasicAnimation *pulse = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulse.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    pulse.duration = 0.5 + (rand() % 10) * 0.05;
    pulse.repeatCount = 1;
    pulse.autoreverses = YES;
    pulse.fromValue = [NSNumber numberWithFloat:.8];
    pulse.toValue = [NSNumber numberWithFloat:1.2];
    [self.btn.layer addAnimation:pulse forKey:nil];
    */
    
    
    //自定义动画
    /*
    POPAnimatableProperty *prop = [POPAnimatableProperty propertyWithName:@"countdown" initializer:^(POPMutableAnimatableProperty *prop) {
        prop.writeBlock = ^(id obj, const CGFloat values[]) {
            UILabel *lable = (UILabel*)obj;
            label.text = [NSString stringWithFormat:@"d:d:d",(int)values[0]/60,(int)values[0]%60,(int)(values[0]*100)0];
        };
        //        prop.threshold = 0.01f;
    }];
    
    POPBasicAnimation *anBasic = [POPBasicAnimation linearAnimation];   //秒表当然必须是线性的时间函数
    anBasic.property = prop;    //自定义属性
    anBasic.fromValue = @(0);   //从0开始
    anBasic.toValue = @(3*60);  //180秒
    anBasic.duration = 3*60;    //持续3分钟
    anBasic.beginTime = CACurrentMediaTime() + 1.0f;    //延迟1秒开始
    [label pop_addAnimation:anBasic forKey:@"countdown"];
    
    */
}

@end
