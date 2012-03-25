//
//  Should_C.h
//  Should-C
//
//  Created by Jackson Harper on 3/24/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>

@interface Should_CTestCase : SenTestCase

- (void) shouldNotBeNil:(id) object;

- (void) int:(int) i shouldBeEqualTo:(int) other;

- (void) shouldFail:(void (^)(void)) expression;
@end


/*
 I like using categories for this, but there is a fundamental problem.
 Because [nil <message>] is basically a noop, things like:
 [<a string set to nil> shouldEqual:@"foobar"] will not fail.
 */
@interface NSObject (Should_C)

- (void) shouldEqual:(NSObject *) other;
- (void) shouldNotEqual:(NSObject *) other;

@end


@interface NSString (Should_C) 

- (void) shouldContain:(NSString *) other;
- (void) shouldStartWith:(NSString *) other;
- (void) shouldEndWith:(NSString *)other;

@end


/*
 Need to think about how to handle numbers best...
 
@interface NSNumber (Should_C)

- (void) shouldBeLessThan:(NSNumber *) other;
- (void) shouldBeLessthanOrEqualTo:(NSNumber *) other;

- (void) shouldBeGreaterThan:(NSNumber *) other;
- (void) shouldBeGreaterThanOrEqualTo:(NSNumber *) other;

@end
*/
