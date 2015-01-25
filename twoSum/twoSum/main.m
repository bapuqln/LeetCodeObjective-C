//
//  main.m
//  twoSum
//
//  Created by bapu on 15/1/2.
//  Copyright (c) 2015年 bapu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwoSum.h"

/*
 https://oj.leetcode.com/problems/two-sum/
 
 Given an array of integers, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
 
 You may assume that each input would have exactly one solution.
 
 Input: numbers={2, 7, 11, 15}, target=9
 Output: index1=1, index2=2
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        TwoSum *sum = [TwoSum sharedInstance];
        [sum setTheArray:[NSArray arrayWithObjects:@"1",@"2",@"3", nil]];
       NSLog(@"%@", [sum twoSumByTarget:3]);
    }
    return 0;
}
