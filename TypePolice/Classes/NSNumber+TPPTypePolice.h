//
//  NSNumber+TPPTypePolice.h
//  TypePolice
//
//  Created by dev on 11/01/2018.
//

#import <Foundation/Foundation.h>

@interface NSNumber (TPPTypePolice)
+ (NSNumber*)tpp_numberOrNil:(id)value;
+ (NSNumber*)tpp_numberOrZero:(id)value;
@end
