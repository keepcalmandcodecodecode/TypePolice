//
//  TPPTypePolice.h
//  Pods
//
//  Created by developer on 9/3/17.
//
//

#import <Foundation/Foundation.h>

@interface TPPTypePolice : NSObject
+ (id)value:(id)value isKindOf:(Class)class orDefault:(id)defaultValue;
+ (NSNumber*)numberOrNil:(id)value;
+ (NSNumber*)numberOrZero:(id)value;
+ (NSString*)stringOrNil:(id)value;
+ (NSString*)stringOrEmpty:(id)value;
@end
