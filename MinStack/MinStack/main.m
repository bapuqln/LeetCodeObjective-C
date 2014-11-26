//
//  main.m
//  MinStack
//
//  Created by bapu on 14/11/26.
//  Copyright (c) 2014年 bapu. All rights reserved.
//

/*
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
 
 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
 
 https://oj.leetcode.com/problems/min-stack/
 */

#import <Foundation/Foundation.h>
#import "MinStack.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MinStack *stack = [MinStack sharedInstance];
        [stack push:@"5"];
        NSLog(@"%@", [stack pop]);
    }
    return 0;
}
