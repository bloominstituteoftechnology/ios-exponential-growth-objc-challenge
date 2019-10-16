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
	NSDecimalNumber *expected = [NSDecimalNumber numberWithInt:1];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:1];
	XCTAssertEqualObjects(expected, result);
}

//- (void)testNumberOfGrainsOnSquare2 {
//	long long expected = 2;
//	long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:2];
//	XCTAssertEqual(expected, result);
//}

- (void)testNumberOfGrainsOnSquare3 {
	NSDecimalNumber *expected = [NSDecimalNumber numberWithInt:4];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:3];
	XCTAssertEqualObjects(expected, result);
}

//- (void)testNumberOfGrainsOnSquare4 {
//	unsigned long long expected = 8;
//	unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:4];
//	XCTAssertEqual(expected, result);
//}

//- (void)testNumberOfGrainsOnSquare16 {
//	unsigned long long expected = 32768;
//	unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:16];
//	XCTAssertEqual(expected, result);
//}

- (void)testNumberOfGrainsOnSquare32 {
	NSDecimalNumber *expected = [NSDecimalNumber numberWithInteger:2147483648];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:32];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare64 {
	NSDecimalNumber *expected = [NSDecimalNumber numberWithUnsignedLongLong:9223372036854775808ULL];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:64];
	XCTAssertEqualObjects(expected, result);
}

//- (void)testNumberOfGrainsOnSquare65 {
//	NSDecimalNumber *expected = [NSDecimalNumber numberWithInt:-1];
//	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:65];
//	XCTAssertEqualObjects(expected, result);
//}

- (void)testNumberOfGrainsOnSquareNeg1 {
	NSDecimalNumber *expected = [NSDecimalNumber numberWithInt:-1];
	NSDecimalNumber *result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:-1];
	XCTAssertEqualObjects(expected, result);
}

- (void)testNumberOfGrainsOnSquare0 {
	NSDecimalNumber *expected = [NSDecimalNumber numberWithInt:-1];
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
