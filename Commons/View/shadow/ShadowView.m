//
//  ShadowView.m
//  VCFinances
//
//  Created by chen liang on 2018/10/23.
//  Copyright © 2018年 weiclicai. All rights reserved.
//

#import "ShadowView.h"

@implementation ShadowView

- (void)shadowColor:(UIColor *)color offset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius cornerRadius:(CGFloat)cornerRadius {
    NSAssert(self.superview != nil, @"必须先加入父视图");
    CALayer *layer = [[CALayer alloc] init];
    layer.frame = self.frame;
    layer.cornerRadius = cornerRadius;
    layer.backgroundColor = self.layer.backgroundColor;
    layer.shadowOffset = offset;
    layer.shadowOpacity = opacity;
    layer.shadowRadius = radius;
    layer.shadowColor = color.CGColor;
    [self.superview.layer insertSublayer:layer below:self.layer];
}

- (void)constrainShadow:(UIColor *)color offset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius cornerRadius:(CGFloat)cornerRadius {
    NSAssert(self.superview != nil, @"必须先加入父视图");
    [self.superview setNeedsLayout];
    [self.superview layoutIfNeeded];
    CALayer *layer = [[CALayer alloc] init];
    layer.frame = self.frame;
    layer.cornerRadius = cornerRadius;
    layer.backgroundColor = self.layer.backgroundColor;
    layer.shadowOffset = offset;
    layer.shadowOpacity = opacity;
    layer.shadowRadius = radius;
    layer.shadowColor = color.CGColor;
    [self.superview.layer insertSublayer:layer below:self.layer];
}


@end
