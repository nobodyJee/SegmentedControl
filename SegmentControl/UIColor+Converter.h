//
//  UIColor+Converter.h
//  TGA
//
//  Created by developer on 16/1/29.
//  Copyright © 2016年 developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Converter)

+ (UIColor *)colorFromHexRGB:(NSString *)hexColorString;
+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat) alpha;

@end
