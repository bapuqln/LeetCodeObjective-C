//
//  LSWRC.h
//  LongestSubstringWithOutRepeatingCharacters
//
//  Created by bapu on 15/1/25.
//  Copyright (c) 2015年 bapu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSWRC : NSObject

+ (LSWRC *)sharedInstance;
- (NSInteger )longestSubstringWithoutRepeatingCharacter:(NSString *)srcString;

@end
