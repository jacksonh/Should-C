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
}

- (void)tearDown
{    
    [super tearDown];
}

- (void) test_numberShouldBeLessThanOrEqual_twoIdenticalInts_shouldNotFail
{
    NSNumber *left = [NSNumber numberWithInt:25];
    NSNumber *right = [NSNumber numberWithInt:25];
    
    [Test number:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_numberShouldBeLessThanOrEqual_leftIntIsLessThanRightInt_shouldNotFail
{
    NSNumber *left = [NSNumber numberWithInt:24];
    NSNumber *right = [NSNumber numberWithInt:25];
    
    [Test number:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_numberShouldBeLessThanOrEqual_leftIntGreaterThanRightInt_shouldFail
{
    NSNumber *left = [NSNumber numberWithInt:26];
    NSNumber *right = [NSNumber numberWithInt:25];
    
    [Test shouldFail:^{
        [Test number:left shouldBeLessThanOrEqualTo:right];
    }];
}

- (void) test_numberShouldBeLessThan_twoIdenticalInts_shouldFail
{
    NSNumber *left = [NSNumber numberWithInt:25];
    NSNumber *right = [NSNumber numberWithInt:25];
    
    [Test shouldFail:^{
        [Test number:left shouldBeLessThan:right];
    }];
}

- (void) test_numberShouldBeLessThan_leftIntIsLessThanRightInt_shouldNotFail
{
    NSNumber *left = [NSNumber numberWithInt:24];
    NSNumber *right = [NSNumber numberWithInt:25];
    
    [Test number:left shouldBeLessThan:right];
}

- (void) test_numberShouldBeLessThan_leftIntGreaterThanRightInt_shouldFail
{
    NSNumber *left = [NSNumber numberWithInt:26];
    NSNumber *right = [NSNumber numberWithInt:25];
    
    [Test shouldFail:^{
        [Test number:left shouldBeLessThan:right];
    }];
}



- (void) test_intShouldEqual_twoIdenticalInts_shouldNotFail
{
    int left = 25;
    int right = 25;
    
    [Test int:left shouldEqual:right]; 
}

- (void) test_intShouldEqual_theSameInt_shouldNotFail
{
    int left = 25;
    
    [Test int:left shouldEqual:left]; 
}

- (void) test_intShouldEqual_twoDifferentInts_shouldFail
{
    int left = 25;
    int right = 26;
    
    [Test shouldFail:^{
        [Test int:left shouldEqual:right];
    }];
}

- (void) test_shouldEqual_objectIsNilOtherIsNot_shouldFail
{
    NSString *left = nil;
    NSString *right = @"i am string";
    
    [Test shouldFail:^{
        [Test object:left shouldEqual:right];
    }];
}


@end
