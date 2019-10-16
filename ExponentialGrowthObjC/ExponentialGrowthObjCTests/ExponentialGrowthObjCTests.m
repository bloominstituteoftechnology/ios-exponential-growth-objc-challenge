//
//  ExponentialGrowthObjCTests.m
//  ExponentialGrowthObjCTests
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GrainsOfRice.h"

NS_ASSUME_NONNULL_BEGIN

@interface ExponentialGrowthObjCTests : XCTestCase


@end

@implementation ExponentialGrowthObjCTests


- (void)testNumberOfGrainsOnSquare1 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"1"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:1];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare2 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"2"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:2];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare3 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"4"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:3];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare4 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"8"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:4];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare16 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"32768"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:16];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare32 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"2147483648"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:32];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare64 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"9223372036854775808"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:64];
	XCTAssertEqualObjects(expected, result);
}

//- (void)testNumberOfGrainsOnSquare65 {
//	NSDecimalNumber *expected = [NSDecimalNumber numberWithInt:-1];
//	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:65];
//	XCTAssertEqualObjects(expected, result);
//}

- (void)testNumberOfGrainsOnSquareNeg1 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"-1"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:-1];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare0 {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"-1"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:0];
	XCTAssertEqualObjects(expected, result);
}

- (void)testTotalNumberOfGrains {
	NSDecimalNumber *expected = [NSDecimalNumber decimalNumberWithString:@"18446744073709551615"];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnBoard];
	XCTAssertEqualObjects(expected, result);
}

@end
NS_ASSUME_NONNULL_END
