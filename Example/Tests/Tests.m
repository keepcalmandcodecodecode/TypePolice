//
//  TypePoliceTests.m
//  TypePoliceTests
//
//  Created by keepcalmandcodecodecode on 09/03/2017.
//  Copyright (c) 2017 keepcalmandcodecodecode. All rights reserved.
//

// https://github.com/Specta/Specta

#import "TPPTypePolice.h"

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

SpecEnd
