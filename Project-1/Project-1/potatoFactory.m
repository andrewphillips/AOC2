//
//  potatoFactory.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "potatoFactory.h"

@implementation potatoFactory

+(basePotato *)createNewPotatoThing: (int)potatoType;
{
    if (potatoType == CHIPS) {
        return [[makeChips alloc] init];
    } else if (potatoType == MASHED) {
        return [[makeMashed alloc] init];
    } else if (potatoType == GUN){
        return [[makeGun alloc] init];
    } else return nil;
}

@end
