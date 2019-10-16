//
//  GrainsOfRice.m
//  ExponentialGrowthObjC
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//

#import "GrainsOfRice.h"

@implementation GrainsOfRice

// Test your logic with the unit tests (Command + U)

- (NSDecimalNumber *)grainsOnSquareNumber:(NSInteger)number {
	if (number <= 0) {
		return [[NSDecimalNumber alloc] initWithInt:-1];
	}
	NSDecimalNumber *two = [[NSDecimalNumber alloc] initWithInt:2];
	NSDecimalNumber *grains = [two decimalNumberByRaisingToPower:number - 1];

	return grains;
}


- (NSDecimalNumber *)grainsOnBoard {

	NSDecimalNumber *total = [[NSDecimalNumber alloc] initWithInt:0];
	for (int i = 1; i <= 64; i++) {
		total = [total decimalNumberByAdding:[self grainsOnSquareNumber:i]];
	}

	return total;
}

@end
