//
//  NSDictionary+NullReplace.m
//  ReplaceNull
//
//  Created by Vikas Dadheech on 14/08/18.
//  Copyright © 2018 Vikas Dadheech. All rights reserved.
//

#import "NSDictionary+NullReplace.h"

@implementation NSDictionary(NullReplace)


- (NSDictionary *)dictionaryByReplacingNullsWithStrings {
    const NSMutableDictionary *replaced = [self mutableCopy];
    const id nul = [NSNull null];
    const NSString *blank = @"";

    for(NSString *key in self) {
        const id object = [self objectForKey:key];
        if(object == nul) {
            //pointer comparison is way faster than -isKindOfClass:
            //since [NSNull null] is a singleton, they'll all point to the same
            //location in memory.
            [replaced setObject:blank
                         forKey:key];
        }
    }

    return [replaced copy];
}



@end
