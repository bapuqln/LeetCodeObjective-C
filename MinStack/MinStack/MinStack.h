//
//  MinStack.h
//  MinStack
//
//  Created by bapu on 14/11/26.
//  Copyright (c) 2014年 bapu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MinStack : NSObject {
    NSMutableArray* _array;
    id _lastPopObj;
}

@property (nonatomic, assign) BOOL needSave;

+ (MinStack *)sharedInstance;

- (void)push:(id)anObject;
- (id)topElem;
- (id)pop;
- (void)clear;
- (id)lastPopObj;

@end