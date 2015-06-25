//
//  MergeTwoSortedArray.h
//  MedianTwoSortedArrays
//
//  Created by bapu on 15/6/25.
//  Copyright © 2015年 bapu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MergeTwoSortedArray : NSObject{

}

+ (MergeTwoSortedArray *)sharedInstance;
- (NSArray *)merge:(NSArray *)arr1 andArray:(NSArray *)arr2;

@end
