//
//  Should_C.m
//  Should-C
//
//  Created by Jackson Harper on 3/24/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import "Should_C.h"
#import <objc/runtime.h>


@implementation Test

+ (void) int:(int) i shouldBeLessThan:(int) other
{
    return [self number:[NSNumber numberWithInt:i] shouldBeLessThan:[NSNumber numberWithInt:other]];
}

+ (void) int:(int) i shouldBeLessThanOrEqualTo:(int) other
{
    return [self number:[NSNumber numberWithInt:i] shouldBeLessThanOrEqualTo:[NSNumber numberWithInt:other]];
}

+ (void) long:(long) l shouldBeLessThan:(long) other
{
    return [self number:[NSNumber numberWithLong:l] shouldBeLessThan:[NSNumber numberWithLong:other]];
}

+ (void) long:(long) l shouldBeLessThanOrEqualTo:(long) other
{
    return [self number:[NSNumber numberWithLong:l] shouldBeLessThanOrEqualTo:[NSNumber numberWithLong:other]];
}

+ (void) double:(double) d shouldBeLessThan:(double) other
{
    return [self number:[NSNumber numberWithDouble:d] shouldBeLessThan:[NSNumber numberWithDouble:other]];
}

+ (void) double:(double) d shouldBeLessThanOrEqualTo:(double) other
{
    return [self number:[NSNumber numberWithDouble:d] shouldBeLessThanOrEqualTo:[NSNumber numberWithDouble:other]];
}

+ (void) number:(NSNumber *) n shouldBeLessThan:(NSNumber *) other
{
    NSComparisonResult result = [n compare:other];    
    if (result == NSOrderedAscending)
        return;
    [NSException raise:@"ShouldCException" format:@"'%@' is not less than '%@'.", n, other];
}

+ (void) number:(NSNumber *) n shouldBeLessThanOrEqualTo:(NSNumber *) other
{
    NSComparisonResult result = [n compare:other];    
    if (result == NSOrderedAscending || result == NSOrderedSame)
        return;
    [NSException raise:@"ShouldCException" format:@"'%@' is not less than or equal to '%@'.", n, other];
}



+ (void) int:(int)i shouldEqual:(int)other
{
    if (i != other)
        [NSException raise:@"ShouldCException" format:@"'%d' does not equal other int '%d'.", i, other];
}

+ (void) object:(id) obj shouldEqual:(id) other
{
    if (!([obj respondsToSelector:@selector(isEqual:)]))
        [NSException raise:@"ShouldCException" format:@"'%@' does not respond to isEqual.", obj];
    
    if (![obj isEqual:other])
        [NSException raise:@"ShouldCException" format:@"'%@' does not equal other object '%@'.", obj, other];
}

+ (void) shouldFail:(void (^)(void))expression
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




@implementation Should_CTestCase : SenTestCase

@end


