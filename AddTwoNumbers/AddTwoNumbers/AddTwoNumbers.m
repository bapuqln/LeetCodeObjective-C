//
//  AddTwoNumbers.m
//  AddTwoNumbers
//
//  Created by bapu on 15/1/25.
//  Copyright (c) 2015年 bapu. All rights reserved.
//

#import "AddTwoNumbers.h"

@implementation AddTwoNumbers

+ (AddTwoNumbers *)sharedInstance{
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

@end
