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

- (unsigned long long)grainsOnSquareNumber:(NSInteger)number {
    if (number <= 0 || number > 64) {
        return -1;
    }
    long long value = 1;
    for (int i = 1; i < number; i++) {
        value *= 2;
    }
    return value;
}


- (unsigned long long)grainsOnBoard {
    long long value = 0;
    for (int i = 1; i <= 64; i++) {
        value += [self grainsOnSquareNumber:i];
    }
    return value;
}

@end
