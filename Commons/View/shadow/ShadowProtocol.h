//
//  ShadowProtocol.h
//  VCFinances
//
//  Created by chen liang on 2018/10/23.
//  Copyright © 2018年 weiclicai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ShadowProtocol <NSObject>
- (void)shadowColor:(UIColor *)color offset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius cornerRadius:(CGFloat)cornerRadius;

- (void)constrainShadow:(UIColor *)color offset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius cornerRadius:(CGFloat)cornerRadius;
@end

NS_ASSUME_NONNULL_END
