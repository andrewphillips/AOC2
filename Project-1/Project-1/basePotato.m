//
//  basePotato.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "basePotato.h"

@implementation basePotato

@synthesize howManyPotatoes, whichPotatoType, whatWillIDoWithPotatoes;


-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self howManyPotatoes:500];
        [self whichPotatoType:nil];
        [self whatWillIDoWithPotatoes:nil];
    }
    return self;
}


-(void)calculateRateOfFire
{
    NSLog(@"It appears that I have %i potatoes.  Load them in the gun!", howManyPotatoes);
}

@end
