//
//  LSWRC.m
//  LongestSubstringWithOutRepeatingCharacters
//
//  Created by bapu on 15/1/25.
//  Copyright (c) 2015年 bapu. All rights reserved.
//

#import "LSWRC.h"

@implementation LSWRC

+ (LSWRC *)sharedInstance{
    static id instance;
    static dispatch_once_t onceToken;
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

- (NSInteger )longestSubstringWithoutRepeatingCharacter:(NSString *)srcString{

    NSUInteger length = [srcString length];
    
    const int max = 256;
    int flagArray[max];
    memset(flagArray, -1, sizeof(flagArray));
    int maxLen = 0;
    int lastRepeatPos = -1;
    
    for (int i = 0; i < length; i++) {
        if (flagArray[[srcString characterAtIndex:i]] != -1 && lastRepeatPos < flagArray[[srcString characterAtIndex:i]]) {
            lastRepeatPos = flagArray[[srcString characterAtIndex:i]];
        }
        if (i - lastRepeatPos > maxLen) {
            maxLen = i - lastRepeatPos;
        }
        flagArray[[srcString characterAtIndex:i]] = i;
    }
    return maxLen;
}

@end
