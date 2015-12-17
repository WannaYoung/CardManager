//
//  UIImage+Extensions.h
//  ThumbLoan
//
//  Created by ios on 15/2/15.
//  Copyright (c) 2015年 zendai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extensions)
- (UIImage *)imageAtRect:(CGRect)rect;
- (UIImage *)imageByScalingProportionallyToMinimumSize:(CGSize)targetSize;
- (UIImage *)imageByScalingProportionallyToSize:(CGSize)targetSize;
- (UIImage *)imageByScalingToSize:(CGSize)targetSize;
- (UIImage *)imageRotatedByRadians:(CGFloat)radians;
- (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)fixOrientation:(UIImage *)aImage;
@end
