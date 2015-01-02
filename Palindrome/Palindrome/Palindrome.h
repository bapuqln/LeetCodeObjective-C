//
//  Palindrome.h
//  Palindrome
//
//  Created by bapu on 14/11/26.
//  Copyright (c) 2014年 bapu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Palindrome : NSObject

+ (Palindrome *)sharedInstance;
- (BOOL)isPalindrome:(NSString *)srcStr;

@end
