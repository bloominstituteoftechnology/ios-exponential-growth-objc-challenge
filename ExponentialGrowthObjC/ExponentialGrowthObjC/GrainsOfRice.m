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
    long total = 0;
    long grains = 0;
    for (long i = 0; i <= 64; i++) {
        for (int k = 0; k <= 64; k++) {
            grains = (i * 2);
            NSLog(@"Square %d = %li grains", k, grains);
        }
    }
    return grains - 1;
}


- (unsigned long long)grainsOnBoard {
    #warning Implement this method 2nd
    
    return 0;
}

@end
