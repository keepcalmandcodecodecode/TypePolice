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
    it(@"can check type of NSString", ^{
        NSString *type = @"type";
        expect([NSString tpp_stringOrNil:type]).equal(type);
        NSString *emptyString = @"";
        expect([NSString tpp_stringOrNil:emptyString]).equal(emptyString);
        NSString *nilString = nil;
        expect([NSString tpp_stringOrNil:nilString]).beNil();
        NSString *notAString = (NSString*)@1;
        expect([NSString tpp_stringOrNil:notAString]).beNil();
        
    });
});

SpecEnd
