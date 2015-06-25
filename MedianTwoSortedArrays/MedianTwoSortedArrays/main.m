//
//  main.m
//  MedianTwoSortedArrays
//
//  Created by bapu on 15/6/25.
//  Copyright © 2015年 bapu. All rights reserved.
//

/*
 https://leetcode.com/problems/median-of-two-sorted-arrays/
 There are two sorted arrays nums1 and nums2 of size m and n respectively. Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 */

#import <Foundation/Foundation.h>
#import "MergeTwoSortedArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         因为要求时间复杂度为log(m+n)
         假定t时间结束t = log(m + n) -> 2^t = m + n ->二分查找
         O(log(m + n)) = 2*O(log(m + n)) > log(m * n) = log(m) + log(n)
         */
        NSArray *arr1 = @[@"a", @"b"];
        NSArray *arr2 = @[@"c", @"d"];
        NSArray *mergedArr = [[MergeTwoSortedArray sharedInstance] merge:arr1 andArray:arr2];
    }
    return 0;
}
