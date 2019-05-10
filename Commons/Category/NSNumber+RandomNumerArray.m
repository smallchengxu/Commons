//
//  NSNumber+RamdomNumerArray.m
//  ChineseWord
//
//  Created by YunRui on 2019/5/4.
//  Copyright © 2019 Shengyang. All rights reserved.
//

#import "NSNumber+RandomNumerArray.h"

@implementation NSNumber (RandomNumerArray)

+ (NSMutableArray<NSNumber *> *)no_repeatRandomNumbersFromValue:(NSInteger)fromVaule toValue:(NSInteger)toValue numbersCount:(NSInteger)count{
    
    
    if (toValue - fromVaule + 1 < count) {
        return [NSMutableArray array];
    } else {
        NSMutableArray<NSNumber *> *target_numbers = [NSMutableArray array];
        do {
            NSInteger randomCount = (arc4random() + fromVaule) % toValue;
            NSNumber *randomNumber = [NSNumber numberWithInteger:randomCount];
            if (![target_numbers containsObject:randomNumber]) {
                [target_numbers addObject:randomNumber];
            }
        } while (target_numbers.count < count);
        return target_numbers;
    }
}

+ (NSMutableArray<NSNumber *> *)no_repeatRandomNumbersFromValue:(NSInteger)fromVaule toValue:(NSInteger)toValue numbersCount:(NSInteger)count mustContainValue:(NSInteger)needValue {
    
    if (toValue - fromVaule + 1 < count || needValue > toValue || needValue < fromVaule) {
        return [NSMutableArray array];
    } else {
        
        NSMutableArray<NSNumber *> *target_numbers = [NSNumber no_repeatRandomNumbersFromValue:fromVaule toValue:toValue numbersCount:count];
        NSNumber *needNumber = [NSNumber numberWithInteger:needValue];
        NSInteger randomIndex = arc4random() % target_numbers.count;
        [target_numbers replaceObjectAtIndex:randomIndex withObject:needNumber];
        return target_numbers;
    }
}

@end
