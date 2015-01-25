//
//  MinStack.m
//  MinStack
//
//  Created by bapu on 14/11/26.
//  Copyright (c) 2014年 bapu. All rights reserved.
//

#import "MinStack.h"
@interface MinStack ()

@property (nonatomic, retain) id lastPopObj;

@end

@implementation MinStack

@synthesize lastPopObj = _lastPopObj;

- (id)init
{
    if( self=[super init] )
    {
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc {
    [_array release]; _array = nil;
    [_lastPopObj release]; _lastPopObj = nil;
    [super dealloc];
}

- (void)push:(id)anObject
{
    [_array addObject:anObject];
}

- (id)firstElem{
    return [_array objectAtIndex:0];
}

- (id)topElem{
    return [_array lastObject];
}

- (id)lastPopObj{
    return _lastPopObj;
}

- (id)pop
{
    id lastObj = nil;
    if(_array.count > 0)
    {
        lastObj = [[[_array lastObject]retain]autorelease];
        [_array removeLastObject];
    }
    [self setLastPopObj:lastObj];
    return lastObj;
}

- (void)clear
{
    [_array removeAllObjects];
}

+ (MinStack*)sharedInstance
{
    static dispatch_once_t onceToken;
    static id instance;
    
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    
    return instance;
}

@end
