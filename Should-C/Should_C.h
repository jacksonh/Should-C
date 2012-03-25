//
//  Should_C.h
//  Should-C
//
//  Created by Jackson Harper on 3/24/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>

@interface Test : NSObject 

+ (void) int:(int) i shouldBeLessThan:(int) other;
+ (void) int:(int) i shouldBeLessThanOrEqualTo:(int) other;
+ (void) long:(long) l shouldBeLessThan:(long) other;
+ (void) long:(long) l shouldBeLessThanOrEqualTo:(long) other;
+ (void) double:(double) d shouldBeLessThan:(double) other;
+ (void) double:(double) d shouldBeLessThanOrEqualTo:(double) other;
+ (void) number:(NSNumber *) n shouldBeLessThan:(NSNumber *) other;
+ (void) number:(NSNumber *) n shouldBeLessThanOrEqualTo:(NSNumber *) other;

+ (void) int:(int) i shouldBeGreaterThan:(int) other;
+ (void) int:(int) i shouldBeGreaterThanOrEqualTo:(int) other;
+ (void) long:(long) l shouldBeGreaterThan:(long) other;
+ (void) long:(long) l shouldBeGreaterThanOrEqualTo:(long) other;
+ (void) double:(double) d shouldBeGreaterThan:(double) other;
+ (void) double:(double) d shouldBeGreaterThanOrEqualTo:(double) other;
+ (void) number:(NSNumber *) n shouldBeGreaterThan:(NSNumber *) other;
+ (void) number:(NSNumber *) n shouldBeGreaterThanOrEqualTo:(NSNumber *) other;

+ (void) int:(int) i shouldEqual:(int) other;
+ (void) long:(long) l shouldEqual:(long) other;
+ (void) double:(double) d shouldEqual:(double) other;
+ (void) number:(NSNumber *) n shouldEqual:(NSNumber *) other;
+ (void) object:(id) obj shouldEqual:(id) other;

+ (void) int:(int) i shouldNotEqual:(int) other;
+ (void) long:(long) l shouldNotEqual:(long) other;
+ (void) double:(double) d shouldNotEqual:(double) other;
+ (void) number:(NSNumber *) n shouldNotEqual:(NSNumber *) other;
+ (void) object:(id) obj shouldNotEqual:(id) other;

+ (void) shouldFail:(void (^)(void)) expression;

@end


@interface Should_CTestCase : SenTestCase


@end

