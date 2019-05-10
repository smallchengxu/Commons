//
//  UIColor+VCColorTool.h
//  VCBasicModule
//
//  Created by chen liang on 2018/3/12.
//  Copyright © 2018年 chen liang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGBColor(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]
#define RGBColorAlpha(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
@interface UIColor (VCColorTool)

///  need manual operation to realse compents memory
- (void)colorCompents:(CGFloat **)compents;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)color;
+ (UIColor *)randomColorWithAlpah:(CGFloat)alpha;
+ (UIColor *)randomColor;
@end
