//
//  ArrayUtility.h
//  findLargest
//
//  Created by Frank Chen on 2019-04-10.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArrayUtility : NSObject

-(NSNumber *) largestNumber: (NSArray *) numbers;
-(NSNumber *) smallestNmber: (NSArray *) numbers;
-(NSNumber *) medianNumber: (NSArray *) numbers;

@end

NS_ASSUME_NONNULL_END
