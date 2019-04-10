//
//  ArrayUtility.m
//  findLargest
//
//  Created by Frank Chen on 2019-04-10.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

-(NSNumber*) largestNumber:(NSArray *)numbers{
    NSNumber *lastNumber;
    NSNumber *largestNumber = 0;
    for (NSNumber *number in numbers) {
        if (number > lastNumber) {
            largestNumber = number;
            lastNumber = number;
            //NSLog(@"%@", lastNumber);
        }
        
    }
    NSLog(@"%@", largestNumber);
    return largestNumber;
}

-(NSNumber *) smallestNmber:(NSArray *)numbers{
    NSNumber *lastNumber = [NSNumber numberWithInteger:9999999999];
    NSNumber *smallestNumber = 0;
    for (NSNumber *number in numbers) {
        if (number < lastNumber) {
            smallestNumber = number;
            lastNumber = number;
            //NSLog(@"%@", lastNumber);
        }
        
    }
    NSLog(@"%@", smallestNumber);
    return smallestNumber;
}

-(NSNumber *)medianNumber:(NSArray *)numbers{
    NSNumber *medianNumber;
    NSArray* asc = [numbers sortedArrayUsingComparator:^NSComparisonResult(NSNumber* n1, NSNumber* n2) {
        return [n1 compare:n2];
    }];
    int sum = 0;
    unsigned long count = [numbers count];

    if (count % 2 != 0){
        medianNumber = asc[(count + 1) / 2 - 1];
    } else {
        for (NSNumber *number in numbers) {
            int b = [number intValue];
            sum += b;
        }
        int countInInt = (int)count;
        int medianInInt = sum / countInInt;
        medianNumber = @(medianInInt);
    }
    NSLog(@"median number is %@", medianNumber);
    return medianNumber;
}
@end
