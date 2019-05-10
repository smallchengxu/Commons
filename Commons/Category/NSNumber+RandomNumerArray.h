//
//  NSNumber+RamdomNumerArray.h
//  ChineseWord
//
//  Created by YunRui on 2019/5/4.
//  Copyright © 2019 Shengyang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSNumber (RandomNumerArray)

/**
 不重复随机数字

 @param fromVaule 最小值
 @param toValue 最大值
 @param count 随机个数
 @return 随机数数组
 */
+ (NSMutableArray<NSNumber *> *)no_repeatRandomNumbersFromValue:(NSInteger)fromVaule toValue:(NSInteger)toValue numbersCount:(NSInteger)count;

/**
 不重复随机数，必须包含指定数

 @param fromVaule 最小值
 @param toValue 最大值
 @param count 随机个数
 @param needValue 指定数
 @return 随机数数组
 */
+ (NSMutableArray<NSNumber *> *)no_repeatRandomNumbersFromValue:(NSInteger)fromVaule toValue:(NSInteger)toValue numbersCount:(NSInteger)count mustContainValue:(NSInteger)needValue;
@end

NS_ASSUME_NONNULL_END
