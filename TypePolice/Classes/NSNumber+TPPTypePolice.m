//
//  NSNumber+TPPTypePolice.m
//  TypePolice
//
//  Created by dev on 11/01/2018.
//

#import "NSNumber+TPPTypePolice.h"
#import "TPPTypePolice.h"

@implementation NSNumber (TPPTypePolice)

+ (NSNumber*)tpp_numberOrNil:(id)value
{
    return [TPPTypePolice value:value isKindOf:self orDefault:nil];
}

+ (NSNumber*)tpp_numberOrZero:(id)value
{
    return [TPPTypePolice value:value isKindOf:self orDefault:@0];
}

@end
