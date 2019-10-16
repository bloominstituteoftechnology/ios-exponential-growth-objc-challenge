//
//  GrainsOfRice.h
//  ExponentialGrowthObjC
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface GrainsOfRice : NSObject

- (void)fillRiceBoard;

- (unsigned long long)grainsOnSquareNumber:(NSInteger)number;

- (unsigned long long)grainsOnBoard;

@end
