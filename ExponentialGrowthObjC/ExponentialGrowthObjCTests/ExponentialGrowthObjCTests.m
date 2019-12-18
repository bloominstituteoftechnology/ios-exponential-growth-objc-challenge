//
//  ExponentialGrowthObjCTests.m
//  ExponentialGrowthObjCTests
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../ExponentialGrowthObjC/GrainsOfRice.h"

NS_ASSUME_NONNULL_BEGIN

@interface ExponentialGrowthObjCTests : XCTestCase


@end

@implementation ExponentialGrowthObjCTests


- (void)testNumberOfGrainsOnSquare1 {
    long long expected = 1;
    long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:1];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare2 {
    long long expected = 2;
    long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:2];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare3 {
    unsigned long long expected = 4;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:3];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare4 {
    unsigned long long expected = 8;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:4];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare16 {
    unsigned long long expected = 32768;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:16];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare32 {
    unsigned long long expected = 2147483648;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:32];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare64 {
    unsigned long long expected = 9223372036854775808ULL;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:64];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare65 {
    unsigned long long expected = -1;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:65];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquareNeg1 {
    unsigned long long expected = -1;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:-1];
    XCTAssertEqual(expected, result);
}

- (void)testNumberOfGrainsOnSquare0 {
    unsigned long long expected = -1;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnSquareNumber:0];
    XCTAssertEqual(expected, result);
}

- (void)testTotalNumberOfGrains {
    unsigned long long expected = 18446744073709551615ULL;
    unsigned long long result = [[[GrainsOfRice alloc] init] grainsOnBoard];
    XCTAssertEqual(expected, result);
}

@end
NS_ASSUME_NONNULL_END
