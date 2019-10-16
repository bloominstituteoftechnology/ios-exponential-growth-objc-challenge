//
//  GrainsOfRice.m
//  ExponentialGrowthObjC
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//

#import "GrainsOfRice.h"

@interface GrainsOfRice ()

@property NSMutableArray *riceBoard;

@end

@implementation GrainsOfRice

- (instancetype)init
{
	self = [super init];
	if (self) {
		[self fillRiceBoard];
	}
	return self;
}

- (void)fillRiceBoard {
	const int CHESS_BOARD_SQUARES = 64;
	self.riceBoard = [[NSMutableArray alloc] initWithCapacity:CHESS_BOARD_SQUARES];
	self.riceBoard[0] = @1;
	for (int index = 1; index <= CHESS_BOARD_SQUARES; index++) {
		unsigned long long previousSquare = [self.riceBoard[index - 1] longLongValue];
		unsigned long long currentSquare = previousSquare * 2;
		self.riceBoard[index] = [[NSNumber alloc] initWithLongLong:currentSquare];
	}
}

- (unsigned long long)grainsOnSquareNumber:(NSInteger)number {
	int index = [[[NSNumber alloc] initWithInteger:number - 1] intValue];
	if (index > 0 && index < self.riceBoard.count) {
		return [self.riceBoard[index] longLongValue];
	}
	return -1;
}


- (unsigned long long)grainsOnBoard {
	unsigned long long totalCount = 0;
	
	for (NSNumber *riceOnSquare in self.riceBoard) {
		totalCount += [riceOnSquare longLongValue];
	}
    
    return totalCount;
}

@end
