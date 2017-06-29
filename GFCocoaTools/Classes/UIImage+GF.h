//
//  UIImage+GF.h
//  GFCocoaTools
//
//  Created by guofengld on 2017/3/14.
//  Copyright © 2017年 guofengld@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (GF)

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)imageWithColor:(UIColor *)color
                       size:(CGSize)size
          byRoundingCorners:(UIRectCorner)corners
                cornerRadii:(CGSize)cornerRadii;

- (UIImage *)convertToGrayscale;

- (UIImage *)imageMaskedWithColor:(UIColor *)maskColor;

- (UIImage *)imageResized:(CGFloat)resolution;

- (UIImage *)croppedImage:(CGRect)bounds;

- (UIImage *)imageRotated:(UIImageOrientation)orientation;

- (UIImage *)imageWithCornerRadius:(CGFloat)cornerRadius
                             scale:(CGFloat)scale;

- (UIImage *)imageWithAlpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
