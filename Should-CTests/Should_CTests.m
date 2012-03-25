//
//  Should_CTests.m
//  Should-CTests
//
//  Created by Jackson Harper on 3/24/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import "Should_CTests.h"
#import "Should_C.h"

@implementation Should_CTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void) test_intShouldEqual_intsThatAreEqual_shouldNotFail
{
    int a = 25;
    int b = 25;
    
    [self int:a shouldBeEqualTo:b];
}

- (void) test_shouldEqual_theSameString_shouldNotFail
{
    NSString *string_one = @"i am string";
    
    [string_one shouldEqual:string_one];
}

- (void) test_shouldEqual_stringsThatAreEqual_shouldNotFail
{
    NSString *string_one = @"i am string";
    NSString *string_two = @"i am string";
    
    [string_one shouldEqual:string_two];
}

- (void) test_shouldEqual_stringsThatAreNotEqual_shouldFail
{
    NSString *string_one = @"i am string one";
    NSString *string_two = @"i am string two";
    
    [self shouldFail:^{ 
        [string_one shouldEqual:string_two];
    }];
}

- (void) test_shouldEqual_theOtherStringIsNil_shouldFail
{
    NSString *string_one = @"i am string";
    
    [self shouldFail:^{ 
        [string_one shouldEqual:nil];
    }];
}


@end
