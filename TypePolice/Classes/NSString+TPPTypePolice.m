//
//  NSString+TPPTypePolice.m
//  TypePolice
//
//  Created by dev on 10/01/2018.
//

#import "NSString+TPPTypePolice.h"
#import "TPPTypePolice.h"

@implementation NSString (TPPTypePolice)

+ (NSString*)tpp_stringOrNil:(id)value
{
    return [TPPTypePolice value:value isKindOf:self orDefault:nil];
}

+ (NSString*)tpp_stringOrEmpty:(id)value
{
    return [TPPTypePolice value:value isKindOf:self orDefault:@""];
}

@end
