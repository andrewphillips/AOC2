//
//  makeGun.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "makeGun.h"

@implementation makeGun


@synthesize howManyPotatoes, doesFitInGunBarrel, potatoesThatFit;

-(id)init
{
    self = [super init]
    if (self != nil)
    {
        [self setHowManyPotatoes:100];
        [self setPotatoesThatFit:4];
        
    }
    
}




@end
