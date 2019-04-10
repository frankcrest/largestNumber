//
//  main.m
//  findLargest
//
//  Created by Frank Chen on 2019-04-09.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"

NSNumber *findLargest(NSArray *x);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSArray *arrayToFindLargestNumber = @[@100, @7, @200, @2];
        NSArray *array2 = @[@200, @300,@400,@301];
        //findLargest(arrayToFindLargestNumber);
        
        ArrayUtility *findLarge1 = [[ArrayUtility alloc]init];
        [findLarge1 largestNumber:arrayToFindLargestNumber];
        
        ArrayUtility *findLarge2 = [[ArrayUtility alloc]init];
        [findLarge2 largestNumber:array2];
        
        ArrayUtility *findSmallest = [[ArrayUtility alloc]init];
        [findSmallest smallestNmber:arrayToFindLargestNumber];
        
        ArrayUtility *findMedian = [[ArrayUtility alloc] init];
        [findMedian medianNumber:arrayToFindLargestNumber];
    }
    return 0;
}


NSNumber *findLargest(NSArray *x){
    NSNumber *lastNumber;
    NSNumber *largestNumber = 0;
    for (NSNumber *number in x) {
        if (number > lastNumber) {
            largestNumber = number;
            lastNumber = number;
            //NSLog(@"%@", lastNumber);
        }

    }
    NSLog(@"%@", largestNumber);
    return largestNumber;

}
