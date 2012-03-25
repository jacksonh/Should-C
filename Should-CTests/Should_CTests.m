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


- (void) test_intShouldBeLessThanOrEqual_twoIdentical_shouldNotFail
{
    int left = 25;
    int right = 25;
    
    [Test int:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_intShouldBeLessThanOrEqual_leftIntIsLessThanRightInt_shouldNotFail
{
    int left = 24;
    int right = 25;

    [Test int:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_intShouldBeLessThanOrEqual_leftIntGreaterThanRightInt_shouldFail
{
    int left = 26;
    int right = 25;
    
    [Test shouldFail:^{
        [Test int:left shouldBeLessThanOrEqualTo:right];
    }];
}

- (void) test_intShouldBeLessThan_twoIdenticalInts_shouldFail
{
    int left = 25;
    int right = 25;
    
    [Test shouldFail:^{
        [Test int:left shouldBeLessThan:right];
    }];
}

- (void) test_intShouldBeLessThan_leftIntIsLessThanRightInt_shouldNotFail
{
    int left = 24;
    int right = 25;
    
    [Test int:left shouldBeLessThan:right];
}

- (void) test_intShouldBeLessThan_leftIntGreaterThanRightInt_shouldFail
{
    int left = 26;
    int right = 25;
    
    [Test shouldFail:^{
        [Test int:left shouldBeLessThan:right];
    }];
}






- (void) test_longShouldBeLessThanOrEqual_twoIdentical_shouldNotFail
{
    long left = 25;
    long right = 25;
    
    [Test long:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_longShouldBeLessThanOrEqual_leftLongIsLessThanRightLong_shouldNotFail
{
    long left = 24;
    long right = 25;
    
    [Test long:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_longtShouldBeLessThanOrEqual_leftLongGreaterThanRightLong_shouldFail
{
    long left = 26;
    long right = 25;
    
    [Test shouldFail:^{
        [Test long:left shouldBeLessThanOrEqualTo:right];
    }];
}

- (void) test_longShouldBeLessThan_twoIdenticalLongs_shouldFail
{
    long left = 25;
    long right = 25;
    
    [Test shouldFail:^{
        [Test long:left shouldBeLessThan:right];
    }];
}

- (void) test_longShouldBeLessThan_leftLongIsLessThanRightLong_shouldNotFail
{
    long left = 24;
    long right = 25;
    
    [Test long:left shouldBeLessThan:right];
}

- (void) test_longShouldBeLessThan_leftLongGreaterThanRightLong_shouldFail
{
    long left = 26;
    long right = 25;
    
    [Test shouldFail:^{
        [Test long:left shouldBeLessThan:right];
    }];
}




- (void) test_doubleShouldBeLessThanOrEqual_twoIdentical_shouldNotFail
{
    double left = 25.0;
    double right = 25.0;
    
    [Test double:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_doubleShouldBeLessThanOrEqual_leftDoubleIsLessThanRightDouble_shouldNotFail
{
    double left = 24.0;
    double right = 25.0;
    
    [Test double:left shouldBeLessThanOrEqualTo:right];
}

- (void) test_doubleShouldBeLessThanOrEqual_leftDoubleGreaterThanRightDouble_shouldFail
{
    double left = 26.0;
    double right = 25.0;
    
    [Test shouldFail:^{
        [Test double:left shouldBeLessThanOrEqualTo:right];
    }];
}

- (void) test_doubleShouldBeLessThan_twoIdenticalDoubles_shouldFail
{
    double left = 25.0;
    double right = 25.0;
    
    [Test shouldFail:^{
        [Test double:left shouldBeLessThan:right];
    }];
}

- (void) test_doubleShouldBeLessThan_leftDoubleIsLessThanRightDouble_shouldNotFail
{
    double left = 24.0;
    double right = 25.0;
    
    [Test double:left shouldBeLessThan:right];
}

- (void) test_doubleShouldBeLessThan_leftDoubleGreaterThanRightDouble_shouldFail
{
    double left = 26.0;
    double right = 25.0;
    
    [Test shouldFail:^{
        [Test double:left shouldBeLessThan:right];
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
