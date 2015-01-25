//
//  Palindrome.m
//  Palindrome
//
//  Created by bapu on 14/11/26.
//  Copyright (c) 2014年 bapu. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome

+ (Palindrome *)sharedInstance{
    static dispatch_once_t onceToken;
    static id instance;
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

- (BOOL)isPalindrome:(NSString *)srcStr{
    BOOL result = NO;

    NSArray *ignorStrArr = [NSArray arrayWithObjects:@"-,",@",",@".",@"/",@";",@"'",@"[",@"]",@"\"",@"",@"<",@">",@"?",@":",@"{",@"}",@"|",@"`",@"!",@"",@"$",@"%,"@"^",@"&",@"*",@"(",@")",@"_",@"+",@"-",@"=",@" ", @"@", @"#", nil];
    
    for (NSString *removeStr in ignorStrArr) {
        srcStr = [srcStr stringByReplacingOccurrencesOfString:removeStr withString:@""];
    }
   
    NSInteger length = [srcStr length];
    NSInteger midPos = length / 2;
    
    for (NSInteger i = 0 , j = length - 1; i <= midPos; i++ ,j--) {
        unichar c = [srcStr characterAtIndex:i];
        unichar d = [srcStr characterAtIndex:j];
        
        if (![[[NSString stringWithFormat:@"%C",c] lowercaseString] isEqualToString:[[NSString stringWithFormat:@"%C",d] lowercaseString]]) {
            break;
        }
        if (i == j) {
            result = YES;
            break;
        }
    }
    return result;
}

@end
