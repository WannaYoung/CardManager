//
//  UIView+Shake.m
//  LDQC
//
//  Created by Tommy on 13-9-12.
//  Copyright (c) 2013年 Tommy. All rights reserved.
//

#import "UIView+Shake.h"

@implementation UIView (Shake)

-(void)shakeAnimationView
{
    CABasicAnimation* shake = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    //设置抖动幅度
    shake.fromValue = [NSNumber numberWithFloat:-0.03];
    
    shake.toValue = [NSNumber numberWithFloat:+0.03];
    
    shake.duration = 0.1;
    
    shake.autoreverses = YES; //是否重复
    
    shake.repeatCount = 4;
    
    [self.layer addAnimation:shake forKey:@"imageView"];
    
    self.alpha = 1.0;
    [UIView animateWithDuration:2.0 delay:2.0 options:UIViewAnimationOptionCurveEaseIn animations:^{} completion:nil];
}

@end
