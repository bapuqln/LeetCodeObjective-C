//
//  TwoSum.m
//  twoSum
//
//  Created by bapu on 15/1/2.
//  Copyright (c) 2015年 bapu. All rights reserved.
//

#import "TwoSum.h"

@implementation TwoSum

@synthesize theArray;

+ (TwoSum *)sharedInstance{
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSString *)twoSumByTarget:(NSInteger)targetNum{
    NSString *result = nil;
    if (self.theArray && self.theArray.count > 0 && targetNum) {
        for (int i = 0; i < self.theArray.count; i++) {
            NSInteger index1 = [[self.theArray objectAtIndex:i] integerValue];
            NSInteger numToFind = targetNum - index1;
            NSString *numStr = [NSString stringWithFormat:@"%ld", numToFind];
            if ([self.theArray containsObject:numStr]) {
                result =[NSString stringWithFormat:@"%ld",[self.theArray indexOfObject:numStr]];
                break;
            }
        }
        
    }
    return result;
}


@end
