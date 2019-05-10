//
//  UIImage+creatImage.h
//  ChildrenSong
//
//  Created by shengyang xie on 2018/12/19.
//  Copyright © 2018 chen liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (creatImage)


/**
 绘制纯色图片

 @param color 颜色
 @return 纯色图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 方形图片圆形裁剪（类方法）

 @param image 图片
 @return 圆角图片
 */
+ (UIImage *)squareImageCircleHandleWithImage:(UIImage *)image;

/**
 方形图片圆形裁剪（如果非方形图片，则无效）

 @return 圆角图片
 */
- (UIImage *)squareImageCircleHandle;

/**
 图片圆角处理

 @param radiu 圆角半径
 @return 圆角图片
 */
- (UIImage *)cornerRadiu:(CGFloat)radius;


@end
