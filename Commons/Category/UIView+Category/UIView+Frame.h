//
//  UIView+Frame.h
//  ChildrenSong
//
//  Created by shengyang xie on 2018/12/19.
//  Copyright © 2018 chen liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat right;
@property (nonatomic,assign) CGFloat bottom;

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGSize  size;
@property (nonatomic,assign) CGPoint origin;

@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;

@end
