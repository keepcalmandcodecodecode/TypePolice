//
//  NSString+TPPTypePolice.h
//  TypePolice
//
//  Created by dev on 10/01/2018.
//

#import <Foundation/Foundation.h>

@interface NSString (TPPTypePolice)
+ (NSString*)tpp_stringOrNil:(id)value;
+ (NSString*)tpp_stringOrEmpty:(id)value;
@end
