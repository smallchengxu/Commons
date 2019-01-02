//
//  UIColor+VCColorTool.h
//  VCBasicModule
//
//  Created by chen liang on 2018/3/12.
//  Copyright © 2018年 chen liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (VCColorTool)

///  need manual operation to realse compents memory
- (void)colorCompents:(CGFloat **)compents;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)randomColorWithAlpah:(CGFloat)alpha;
+ (UIColor *)randomColor;
@end
