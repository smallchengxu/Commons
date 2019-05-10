//
//  UIView+CornerRadius.h
//  ChineseWord
//
//  Created by YunRui on 2019/5/2.
//  Copyright © 2019 Shengyang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CornerRadius)


/**
 任意圆角+边框颜色

 @param corners 圆角位置
 @param radius 圆角半径
 @param borderWidth 边框宽度
 @param borderColor 边框颜色
 */
- (void)roundCorners:(UIRectCorner)corners radius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;



@end

NS_ASSUME_NONNULL_END
