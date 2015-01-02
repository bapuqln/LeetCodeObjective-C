//
//  main.m
//  Palindrome
//
//  Created by bapu on 14/11/26.
//  Copyright (c) 2014年 bapu. All rights reserved.
//

/*
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 For example,
 "A man, a plan, a canal: Panama" is a palindrome.
 "race a car" is not a palindrome.
 
 Note:
 Have you consider that the string might be empty? This is a good question to ask during an interview.
 
 For the purpose of this problem, we define empty string as valid palindrome.
 https://oj.leetcode.com/problems/valid-palindrome/
 */

#import <Foundation/Foundation.h>
#import "Palindrome.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BOOL result = [[Palindrome sharedInstance] isPalindrome:@"你好你"];//:@"A man, a plan, a canal: Panama"];
        if (result) {
            NSLog(@"YES, palindrome");
        } else
            NSLog(@"NO");
    }
    return 0;
}
