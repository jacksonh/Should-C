//
//  Should_C.m
//  Should-C
//
//  Created by Jackson Harper on 3/24/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import "Should_C.h"

@implementation Should_CTestCase : SenTestCase

- (void) shouldNotBeNil:(id) obj
{
    if (!obj)
        [NSException raise:@"ShouldCException" format:@"object is nil."];
}

- (void) int:(int) i shouldBeEqualTo:(int) other;
{
    if (i != other)
        [NSException raise:@"ShouldCException" format:@"'%d' does not equal other int '%d'.", i, other];
}

- (void) shouldFail:(void (^)(void))expression
{
    BOOL failed = NO;
    @try {
        expression ();
    }
    @catch (id exc) {
        failed = YES;
    }
    
    if (!failed)
        [NSException raise:@"ShouldCException" format:@"Expression did not fail."];
}

@end


@implementation NSObject (Should_C)

- (void) shouldEqual:(NSObject *) other
{
    if (![self isEqual:other])
        [NSException raise:@"ShouldCException" format:@"'%@' does not equal other object '%@'.", self, other];
}

- (void) shouldNotEqual:(NSObject *) other
{
    if ([self isEqual:other])
        [NSException raise:@"ShouldCException" format:@"'%@' equals other object '%@'.", self, other];

}

@end



@implementation NSString (Should_C) 

- (void) shouldContain:(NSString *) other;
{
    if ([self rangeOfString:other].location == NSNotFound)
        [NSException raise:@"ShouldCException" format:@"'%@' does not contain string '%@'.", self, other];
}

- (void) shouldStartWith:(NSString *) other
{
    if (![self hasPrefix:other])
        [NSException raise:@"ShouldCException" format:@"'%@' does not start with string '%@'.", self, other];
}

- (void) shouldEndWith:(NSString *)other
{
    if (![self hasPrefix:other])
        [NSException raise:@"ShouldCException" format:@"'%@' does not end with string '%@'.", self, other];
}


@end