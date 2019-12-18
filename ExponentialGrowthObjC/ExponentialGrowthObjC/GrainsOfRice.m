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
    if (number < 0 || number > 64) {
        return -1;
    } else if (number == 0) {
        // The instructions seemed to say to put zero here, but the unit test is expecting -1
        return -1;
    }
    
    unsigned long long result = 1;
    for (NSInteger i = 1; i < number; i++) {
        result *= 2;
    }
    
    return result;
}


- (unsigned long long)grainsOnBoard {
    unsigned long long result = 1;
    unsigned long long currentSquare = 1;
    
    for (NSInteger i = 1; i < 64; i++) {
        currentSquare *= 2;
        result += currentSquare;
    }
    
    return result;
}

@end
