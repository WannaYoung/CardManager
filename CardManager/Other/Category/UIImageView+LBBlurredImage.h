//
//  UIImageView+LBBlurredImage.h
//  LBBlurredImage
//
//  Created by Luca Bernardi on 11/11/12.
//  Copyright (c) 2012 Luca Bernardi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LBBlurredImageCompletionBlock)(NSError *error);

extern NSString *const kLBBlurredImageErrorDomain;

extern CGFloat   const kLBBlurredImageDefaultBlurRadius;

enum LBBlurredImageError {
    LBBlurredImageErrorFilterNotAvailable = 0,
};

@interface UIImageView (LBBlurredImage)


- (void)setImageToBlur: (UIImage *)image
            blurRadius: (CGFloat)blurRadius
       completionBlock: (LBBlurredImageCompletionBlock) completion;

@end
