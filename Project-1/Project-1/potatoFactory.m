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
    return [[makeChips alloc] init];
}

@end
