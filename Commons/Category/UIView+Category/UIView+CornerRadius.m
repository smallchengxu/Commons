//
//  UIView+CornerRadius.m
//  ChineseWord
//
//  Created by YunRui on 2019/5/2.
//  Copyright © 2019 Shengyang. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)
- (void)roundCorners:(UIRectCorner)corners radius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    
    CAShapeLayer *temp = [CAShapeLayer layer];
    temp.lineWidth = borderWidth;
    temp.fillColor = [UIColor clearColor].CGColor;
    temp.strokeColor = borderColor.CGColor;
    temp.frame = self.bounds;
    temp.path = path.CGPath;
    [self.layer addSublayer:temp];
    
    CAShapeLayer *mask = [[CAShapeLayer alloc]initWithLayer:temp];
    mask.path = path.CGPath;
    self.layer.mask = mask;
}
@end
