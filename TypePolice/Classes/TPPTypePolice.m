//
//  TPPTypePolice.m
//  Pods
//
//  Created by developer on 9/3/17.
//
//

#import "TPPTypePolice.h"

@implementation TPPTypePolice

+ (id)value:(id)value isKindOf:(Class)class orDefault:(id)defaultValue
{
    if([value isKindOfClass:class])
    {
        return value;
    }
    return defaultValue;
}

+ (NSNumber*)numberOrNil:(id)value
{
    return [self value:value isKindOf:NSNumber.class orDefault:nil];
}

+ (NSNumber*)numberOrZero:(id)value
{
    return [self value:value isKindOf:NSNumber.class orDefault:@0];
}

+ (NSString*)stringOrNil:(id)value
{
    return [self value:value isKindOf:NSString.class orDefault:nil];
}

+ (NSString*)stringOrEmpty:(id)value
{
    return [self value:value isKindOf:NSString.class orDefault:@""];
}

@end
