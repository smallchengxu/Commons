//
//  UIImage+creatImage.m
//  ChildrenSong
//
//  Created by shengyang xie on 2018/12/19.
//  Copyright © 2018 chen liang. All rights reserved.
//

#import "UIImage+CreatImage.h"

@implementation UIImage (creatImage)
+ (UIImage *)imageWithColor:(UIColor *)color {

    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

+ (UIImage *)squareImageCircleHandleWithImage:(UIImage *)image {
    
    return [image squareImageCircleHandle];
}

- (UIImage *)squareImageCircleHandle {
    
    if (self == nil) {
        return [UIImage new];
    }
    
    CGSize imageSize = self.size;
    if (imageSize.width != imageSize.height) {
        NSAssert(imageSize.width != imageSize.height, @"图片必须为正方形！！");
        return self;
    } else {
        
        //开启位图上下文
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, [UIScreen mainScreen].scale);
        //圆形路径
        UIBezierPath *circlePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, imageSize.width, imageSize.height) cornerRadius:imageSize.width * 0.5];
        //添加路径到上下文
        CGContextAddPath(UIGraphicsGetCurrentContext(), circlePath.CGPath);
        //根据路径裁剪圆角
        CGContextClip(UIGraphicsGetCurrentContext());
        //调用drawInRect方法
        [self drawInRect:CGRectMake(0, 0, imageSize.width, imageSize.height)];
        
        //绘制圆角图片
        CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
        //获得图片
        UIImage *targetImage = UIGraphicsGetImageFromCurrentImageContext();
        //关闭上下文
        UIGraphicsEndImageContext();
        //返回目标图片
        return targetImage;
        
    }
    
}

- (UIImage *)cornerRadiu:(CGFloat)radius {
    
    CGSize size = self.size;
    //开启位图上下文
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //圆角路径
    UIBezierPath *cornerRadisPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, size.width, size.height) cornerRadius:radius];
    //添加路径到上下文
    CGContextAddPath(UIGraphicsGetCurrentContext(), cornerRadisPath.CGPath);
    //根据路径裁剪
    CGContextClip(UIGraphicsGetCurrentContext());
    //调用drawRect方法
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    //绘制圆角图片
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    //获得图片
    UIImage *targetImage = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    //返回目标图片
    return targetImage;
}


@end
