//
//  makeChips.m
//  Project-1
//
//  Created by Andrew Phillips on 10/25/12.
//  Copyright (c) 2012 Andrew Phillips. All rights reserved.
//

#import "makeChips.h"

@implementation makeChips

@synthesize howManyPotatoes, fryerTempF, howManyBlades, howManyMashers;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHowManyPotatoes:200];
        [self setFryerTempF:442];
        [self setHowManyBlades:1];
        [self setHowManyMashers:1];
    }
    return self;
    
};

-(void)calculateRateOfFire
{
    [self setHowManyPotatoes:(howManyPotatoes + (fryerTempF * howManyBlades) + howManyMashers)];
    NSLog(@"Because I have %i potato chips, I'll have a high rate of fire from my potato gun!", self.howManyPotatoes);
}

@end
