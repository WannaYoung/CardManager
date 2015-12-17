//
//  UIImage+Scale.h
//  ThumbLoan
//
//  Created by ios on 15/2/15.
//  Copyright (c) 2015年 zendai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)
-(UIImage*)scaleToSize:(CGSize)size;
-(UIImage *)crop:(CGRect) cropRect;
@end
