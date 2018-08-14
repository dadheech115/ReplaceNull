//
//  NSDictionary+NullReplace.h
//  ReplaceNull
//
//  Created by Vikas Dadheech on 14/08/18.
//  Copyright © 2018 Vikas Dadheech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary(NullReplace)
- (NSDictionary *)dictionaryByReplacingNullsWithStrings;
@end
