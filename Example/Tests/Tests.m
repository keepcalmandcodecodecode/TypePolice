//
//  TypePoliceTests.m
//  TypePoliceTests
//
//  Created by keepcalmandcodecodecode on 09/03/2017.
//  Copyright (c) 2017 keepcalmandcodecodecode. All rights reserved.
//

// https://github.com/Specta/Specta

#import "TypePolice.h"

SpecBegin(TypePoliceSpecs)

describe(@"these will check base method", ^{
    it(@"can check type", ^{
        UIViewController *exampleViewController = [UIViewController new];
        UITableViewController *tableViewController = [UITableViewController new];
        expect([TPPTypePolice value:exampleViewController isKindOf:UIViewController.class orDefault:tableViewController]).equal(exampleViewController);
        expect([TPPTypePolice value:exampleViewController isKindOf:UIViewController.class orDefault:tableViewController]).notTo.equal(tableViewController);
        exampleViewController = nil;
        expect([TPPTypePolice value:exampleViewController isKindOf:UIViewController.class orDefault:tableViewController]).equal(tableViewController);
    });
});

describe(@"these will check NSString", ^{
    it(@"can check type of NSString and returns nil if not string", ^{
        NSString *type = @"type";
        expect([NSString tpp_stringOrNil:type]).equal(type);
        NSString *emptyString = @"";
        expect([NSString tpp_stringOrNil:emptyString]).equal(emptyString);
        NSString *nilString = nil;
        expect([NSString tpp_stringOrNil:nilString]).beNil();
        NSString *notAString = (NSString*)@1;
        expect([NSString tpp_stringOrNil:notAString]).beNil();
    });
    
    it(@"can check type of NSString and returns empty string if not string", ^{
        NSString *type = @"type";
        expect([NSString tpp_stringOrEmpty:type]).equal(type);
        NSString *emptyString = @"";
        expect([NSString tpp_stringOrEmpty:emptyString]).equal(emptyString);
        NSString *nilString = nil;
        expect([NSString tpp_stringOrEmpty:nilString]).equal(emptyString);
        NSString *notAString = (NSString*)@1;
        expect([NSString tpp_stringOrEmpty:notAString]).equal(emptyString);
        
    });
});

describe(@"these will check NSNumber", ^{
    it(@"can check type of NSNumber and returns nil if not number", ^{
        NSNumber *one = @1;
        expect([NSNumber tpp_numberOrNil:one]).equal(one);
        NSNumber *zero = @0;
        expect([NSNumber tpp_numberOrNil:zero]).equal(zero);
        NSString *nilNumber = nil;
        expect([NSNumber tpp_numberOrNil:nilNumber]).beNil();
        NSNumber *notANumber = (NSNumber*)@"";
        expect([NSNumber tpp_numberOrNil:notANumber]).beNil();
    });
    
    it(@"can check type of NSNumber and returns zero if not number", ^{
        NSNumber *one = @1;
        expect([NSNumber tpp_numberOrZero:one]).equal(one);
        NSNumber *nilNumber = nil;
        expect([NSNumber tpp_numberOrZero:nilNumber]).equal(@0);
        NSNumber *notANumber = (NSNumber*)@"0";
        expect([NSNumber tpp_numberOrZero:notANumber]).equal(@0);
    });
});

SpecEnd
