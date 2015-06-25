//
//  MergeTwoSortedArray.m
//  MedianTwoSortedArrays
//
//  Created by bapu on 15/6/25.
//  Copyright © 2015年 bapu. All rights reserved.
//

#import "MergeTwoSortedArray.h"

@implementation MergeTwoSortedArray

+ (MergeTwoSortedArray *)sharedInstance{
    static dispatch_once_t onceToken;
    static id instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSArray *)merge:(NSArray *)arr1 andArray:(NSArray *)arr2{
    NSArray *mergedArray = nil;
    return mergedArray;
}

@end
