//
//  UIColor+VCColorTool.m
//  VCBasicModule
//
//  Created by chen liang on 2018/3/12.
//  Copyright © 2018年 chen liang. All rights reserved.
//

#import "UIColor+VCColorTool.h"

@implementation UIColor (VCColorTool)
- (void)colorCompents:(CGFloat **)compents {
    CGFloat *value  = malloc(sizeof(CGFloat) * 4);
    CGFloat red = 0.0;
    CGFloat green = 0.0;
    CGFloat blue = 0.0;
    CGFloat alpha = 0.0;
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    *value = red;
    *(value+1) = green;
    *(value+2) = blue;
    *(value + 3) = alpha;
}

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    NSString *cString = [color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if (cString.length < 6) {
        return [UIColor clearColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6)
    {
        return [UIColor clearColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)color {
     return [self colorWithHexString:color alpha:1.0f];
}

+ (UIColor *)randomColorWithAlpah:(CGFloat)alpha {
    
    NSInteger r = arc4random() % 256;
    NSInteger g = arc4random() % 256;
    NSInteger b = arc4random() % 256;
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:alpha];
}

+ (UIColor *)randomColor {
    return [UIColor randomColorWithAlpah:1.0];
}
@end
