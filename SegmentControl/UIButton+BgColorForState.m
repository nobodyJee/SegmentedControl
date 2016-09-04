//
//  UIButton+BgColorForState.m
//  TGA
//
//  Created by JiWuChao on 16/5/20.
//  Copyright © 2016年 developer. All rights reserved.
//

#import "UIButton+BgColorForState.h"

@implementation UIButton (BgColorForState)
- (void)setBackgroundColor:(UIColor *)backgroundColor Forstate:(UIControlState)state{
    [self setBackgroundImage:[UIButton imageWithColor:backgroundColor] forState:state];
}



+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
