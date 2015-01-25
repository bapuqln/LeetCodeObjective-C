//
//  TwoSum.h
//  twoSum
//
//  Created by bapu on 15/1/2.
//  Copyright (c) 2015年 bapu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwoSum : NSObject

@property (nonatomic, retain) NSArray *theArray;

+ (TwoSum *)sharedInstance;
- (NSString *)twoSumByTarget:(NSInteger)targetNum;

@end
